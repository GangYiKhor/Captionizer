import math
import pathlib
import time
from datetime import date, datetime
from typing import Union, List


# Absolute File Position
def absolute_path(rel_path: pathlib.Path) -> pathlib.Path:
    """ Find the absolute path of the given path """
    return pathlib.Path(rel_path).absolute()


# Get Directory Path
def get_directory(path: pathlib.Path) -> pathlib.Path:
    """ Get Directory of the Given Path (If given path is a file). Return absolute path """
    path = absolute_path(path)
    if pathlib.Path(path).suffix:
        return pathlib.Path(path).parent
    else:
        return path


# Check and Create Directory
def check_directory(path: pathlib.Path) -> pathlib.Path:
    """ Create directory if the given path is not created. Return absolute path """
    directory = get_directory(path)
    pathlib.Path(directory).mkdir(parents=True, exist_ok=True)
    return directory


# File Path, Name, Type Separator
def filename_separator(filename: Union[pathlib.Path, str]) -> (str, str, str):
    """ Separate path into strings of path parts (Absolute Path) """
    if type(filename) is str:
        filename = pathlib.Path(filename)

    # Search File
    file = absolute_path(filename)

    # Separate File Parts
    filepath = str(file.parent)
    filename = str(file.stem)
    filetype = str(file.suffix)[1:]

    return filepath, filename, filetype


# File name combine
def filename_combiner(filepath, filename, filetype, suffix=None) -> pathlib.Path:
    """ Combine file parts from string to <Path> in absolute path """
    if suffix is None:
        return absolute_path(pathlib.Path(f"{filepath}\\{filename}.{filetype}"))
    else:
        return absolute_path(pathlib.Path(f"{filepath}\\{filename}_{suffix}.{filetype}"))


# Remove files in Path
def remove_files(path: pathlib.Path, filename: str, print_msg=False) -> None:
    """
    Remove files in the directory of the path (If it is a file, remove files in same directory).
    Filename in selector form. For example: (*.txt), (*file*).
    If print_msg is True, removed files will be printed in console
    """
    file_count = 0
    path = get_directory(path)
    if print_msg:
        print("Removing Files...")

    # Loop to Remove All Selected Files
    for file in pathlib.Path(path).glob(filename):
        # Remove File
        try:
            file.unlink()
            file_count += 1
            if print_msg:
                print("Removed:", file)

        # If file not removed, Print Error Message
        except PermissionError:
            print("Unable to remove:", file)

    # If File Removed, Print Message
    if file_count > 0 and print_msg:
        print("Files Removed!")


# Write Log File
def output_log(title: str, text: list, path=pathlib.Path("logs")) -> None:
    """
    Output log file in given path
    Filename: log_YYMMDD.log
    Format: Title, Time, Given Text
    """
    try:
        # Create Logs Directory if not Exists
        path = check_directory(path)

        # Write Log File
        today = date.today().strftime("%y%m%d")
        with open("{0}\\log_{1}.log".format(path, today), 'a') as file:
            file.write("----- {} -----\n".format(title))
            file.write("Time: [{}]\n".format(time.ctime(time.time())))
            file.write("\n".join(text))
            file.write('\n\n')

    except FileNotFoundError as exc:
        print("File Not Found!", exc.filename)


# Write History Files
def output_history(title: str, text: str, output_file) -> None:
    """
    Write history in given path to file in "Prepend Mode" add in first line
    Format: "[Time] Title: {Text}"
    """
    try:
        # Create Directory if not Exists
        check_directory(output_file)

        # Read Existing File
        try:
            with open(output_file, 'r') as file:
                data = file.read()
        except FileNotFoundError:
            data = ""

        # Prepend Data
        now = datetime.now().strftime("[%d-%m-%Y %H:%M:%S]")
        new_data = "{0} {1}: {{{2}}}\n".format(now, title, text)
        data = new_data + data

        # Write File
        with open(output_file, 'w') as file:
            file.write(data)

    except FileNotFoundError as exc:
        print("File Not Found!", exc.filename)


# Read History Files
def read_history(file: pathlib.Path, count=30, prefix='{', postfix='}') -> list:
    """
    Read text from history from given file path between prefix and postfix
    Limit count to given count
    Return in a list of string
    """
    try:
        # Read Existing File
        with open(file, 'r') as file:
            data = file.read()
            data = data.split('\n')

        # If last empty, pop
        if data[-1] == "":
            data.pop()

        # Read at most the number of history available
        if len(data) < count:
            count = len(data)

        # Get first few history only
        data = data[:count]

    except FileNotFoundError:
        data = []

    # Get required data, between prefix and postfix
    for index, dat in enumerate(data):
        prefix_index = dat.index(prefix) + 1
        postfix_index = dat.index(postfix, prefix_index)

        data[index] = dat[prefix_index:postfix_index]

    return data


# Shorten Path
def shorten_path(path: pathlib.Path, num_of_char=None) -> (str, pathlib.Path):
    r"""
    Shorten given path in shorter string
    Format: C:\...\directory\filename.txt
    If given num_of_char, excess filename will be shorten
    Example: C:\...\directory\fi...me.txt
    """
    # Get Path
    path = absolute_path(path)
    path_parts = path.parts

    # Get Shortened Path
    shortened_path = path_parts[0] + "..." + path_parts[-2] + "\\"
    filename = path.parts[-1]

    # Even shortened if limited num of char
    if num_of_char is not None and num_of_char < len(filename):
        small_path = pathlib.Path(filename)
        suffix = small_path.suffix
        file = small_path.stem
        part_1 = file[:math.floor(num_of_char / 2)]
        part_2 = file[math.ceil(num_of_char / 2) * -1:]
        filename = part_1 + "..." + part_2 + suffix

    # Set Shortened Path
    shortened_path = shortened_path + filename

    # Normalise Path
    shortened_path = shortened_path
    original_path = path
    return shortened_path, original_path


# Remove Old Files (X Days)
def remove_old_files(directory: pathlib.Path, days=7, print_msg=False, max_size=10*1024*1024*1024) -> None:
    """
    Remove files in given directory (Or current directory if given file's path)
    that are older than days given.
    Or largest files if exceed max size (in bytes) [Default 10 GB]\n
    If print_msg is True, removed files will be printed onto console
    """
    # Get Path and Expiry Date
    path = absolute_path(get_directory(directory))
    now = time.time()
    expired = now - (days * 24 * 60 * 60)

    # Get Largest File
    file_size_pair = []
    total_size = 0

    # Remove expired Files
    for file in path.glob("*"):
        if file.is_file():
            # If expired, Remove File
            if file.stat().st_mtime < expired:
                if print_msg:
                    print("File Expired: ", file)
                file.unlink()
            else:
                # Else Calculate File Size
                total_size += file.stat().st_size
                file_size_pair.append((file, file.stat().st_size))

    # Sort File by Size
    sorted_file_pair = sorted(file_size_pair, key=lambda item: item[1], reverse=True)

    try:
        while total_size > max_size and len(sorted_file_pair) > 0:
            remove_file, remove_size = sorted_file_pair.pop(0)  # Pop largest
            remove_file.unlink()
            total_size -= remove_size
    except IndexError:
        pass


# Build Directories
def build_directories(paths: List[Union[str, pathlib.Path]]):
    for path in paths:
        check_directory(pathlib.Path(path))
