import os
import subprocess
import sys
from pathlib import Path
from typing import Optional

from PyQt5.QtGui import QCursor

# Selection Files
import Transcribe
import ModelTranslator
import Translate
import AcceptableFiles

# Backend Files
import Dialog
import FileOperations

# Thread Files
from ThreadConversion import (ThreadConversion, ThreadConversion_Cancel)
from ThreadRecording import (ThreadRecording, ThreadRecording_Stop)
from ThreadTranscribe import (ThreadTranscribe, ThreadTranscribe_Cancel)
from ThreadTranslate import (ThreadTranslate, ThreadTranslate_Cancel)
from ThreadPlayer import (ThreadPlayer, ThreadPlayer_PlaySelected, ThreadPlayer_Pause, ThreadPlayer_Play,
                          ThreadPlayer_Stop)

# UI Files
import UiFunction
from UiCaptionizer import *
import UiStyle

# UI Libraries
from PyQt5.QtCore import QPoint, Qt
from PyQt5.QtWidgets import (QApplication, QMainWindow, QDesktopWidget, QProgressBar, QMenu, QAction)


class UiMain(QMainWindow):
    click_pos: QPoint
    window_pos: QPoint
    default_language = "English"

    # region Initialise
    def __init__(self):
        QMainWindow.__init__(self)
        self.__initGUI__()
        self.__initVar__()
        self.__reload_history()

    def mousePressEvent(self, event):
        self.click_pos = event.windowPos()
        self.window_pos = self.pos()

    # Initialise GUI
    def __initGUI__(self):
        # Setup UI
        self.objGUI = Ui_MainWindow()
        self.objGUI.setupUi(self)
        UiStyle.register_font()

        # Max Size
        self.setMaximumSize(QDesktopWidget().size())

        # Window Control
        UiFunction.hide_title_bar(self, self.objGUI.btn_maximize, self.objGUI.frm_titlebar, self.objGUI.frm_window)
        self.objGUI.btn_minimize.clicked.connect(self.showMinimized)
        self.objGUI.btn_close.clicked.connect(
            lambda: UiFunction.close(self))
        self.objGUI.btn_maximize.clicked.connect(
            lambda: UiFunction.maximize(self, self.objGUI.btn_maximize))
        self.objGUI.frm_titlebar.mouseMoveEvent = (
            lambda event: UiFunction.move_window(event, self, self.objGUI.btn_maximize))
        self.objGUI.frm_titlebar.mouseReleaseEvent = (
            lambda event: UiFunction.move_window_maximize(event, self, self.objGUI.btn_maximize))
        self.resizeEvent = (
            lambda event: UiFunction.resize_window(self))

        # Initialise
        self.__initMenu__()
        self.__initDroppable__()
        self.__initBtn__()
        self.__initValue__()
        self.__initDisabled__()

        # Show Window
        self.show()

    # Initialise Menu
    def __initMenu__(self):
        # File Menu
        self.menu_file = QMenu("File", self)
        self.menu_file.setObjectName("menu_file")

        self.menu_file_refresh = QAction("Refresh", self.menu_file)
        self.menu_file_refresh.setObjectName("menu_file_refresh")
        self.menu_file_refresh.triggered.connect(self.__listener_refresh)
        self.menu_file.addAction(self.menu_file_refresh)

        self.objGUI.mnu_file.setMenu(self.menu_file)

        # History Menu
        self.menu_history = QMenu("History", self)
        self.menu_history.setObjectName("menu_history")

        self.menu_history_transcribe = QMenu("Transcription History", self.menu_history)
        self.menu_history_transcribe.setObjectName("menu_history_transcribe")
        self.menu_history.addMenu(self.menu_history_transcribe)

        self.menu_history_translate = QMenu("Translation History", self.menu_history)
        self.menu_history_translate.setObjectName("menu_history_translate")
        self.menu_history.addMenu(self.menu_history_translate)

        self.objGUI.mnu_history.setMenu(self.menu_history)
        self.menu_history.triggered[QAction].connect(self.__listener_history)

    # Initialise Droppable
    def __initDroppable__(self):
        # region Transcribe List
        parent = self.objGUI.lst_transcribe_file.parent()
        parent.setAcceptDrops(True)

        parent.dragEnterEvent = (
            lambda event: UiFunction.droppable_drag_enter(
                event, self.objGUI.lst_transcribe_file, AcceptableFiles.MEDIA_FILE))

        parent.dragLeaveEvent = (
            lambda event: UiFunction.droppable_drag_leave(
                self.objGUI.lst_transcribe_file))

        parent.dropEvent = (
            lambda event: UiFunction.droppable_drop(
                event, self.objGUI.lst_transcribe_file, AcceptableFiles.MEDIA_FILE,
                add_directly=False, function=self.__process_transcribe_file_add))
        # endregion

        # region Translate List
        parent = self.objGUI.lst_translate_file.parent()
        parent.setAcceptDrops(True)

        parent.dragEnterEvent = (
            lambda event: UiFunction.droppable_drag_enter(
                event, self.objGUI.lst_translate_file, AcceptableFiles.TEXT_FILE))

        parent.dragLeaveEvent = (
            lambda event: UiFunction.droppable_drag_leave(
                self.objGUI.lst_translate_file))

        parent.dropEvent = (
            lambda event: UiFunction.droppable_drop(
                event, self.objGUI.lst_translate_file, AcceptableFiles.TEXT_FILE,
                add_directly=False, function=self.__process_translate_file_add))
        # endregion

    # Initialise Buttons
    def __initBtn__(self):
        # region Menu Selections
        self.objGUI.btn_menu.clicked.connect(
            lambda: UiFunction.toggle_menu(self, self.objGUI.frm_menubar))

        self.objGUI.btn_menuTranscription.clicked.connect(
            lambda: UiFunction.change_page(self.objGUI.frm_menus, self.objGUI.btn_menuTranscription,
                                           self.objGUI.stackedWidget, self.objGUI.pg_transcribe))

        self.objGUI.btn_menuTranslation.clicked.connect(
            lambda: UiFunction.change_page(self.objGUI.frm_menus, self.objGUI.btn_menuTranslation,
                                           self.objGUI.stackedWidget, self.objGUI.pg_translate))

        # Main Menu Selections
        self.objGUI.btn_mainMenu_transcription.clicked.connect(
            lambda: UiFunction.change_page(self.objGUI.frm_menus, self.objGUI.btn_menuTranscription,
                                           self.objGUI.stackedWidget, self.objGUI.pg_transcribe))

        self.objGUI.btn_mainMenu_translation.clicked.connect(
            lambda: UiFunction.change_page(self.objGUI.frm_menus, self.objGUI.btn_menuTranslation,
                                           self.objGUI.stackedWidget, self.objGUI.pg_translate))
        # endregion

        # region Transcribe
        self.objGUI.btn_transcribe_file_add.clicked.connect(self.__listener_transcribe_file_add)
        self.objGUI.btn_transcribe_file_remove.clicked.connect(self.__listener_transcribe_file_remove)
        self.objGUI.btn_transcribe_file_record.clicked.connect(self.__listener_transcribe_record)
        self.objGUI.btn_transcribe_player_playSelected.clicked.connect(self.__listener_player_play_selected)
        self.objGUI.btn_transcribe_player_play.clicked.connect(self.__listener_player_play)
        self.objGUI.btn_transcribe_player_pause.clicked.connect(self.__listener_player_pause)
        self.objGUI.btn_transcribe_player_stop.clicked.connect(self.__listener_player_stop)
        self.objGUI.sld_transcribe_player.valueChanged.connect(self.__listener_player_slider)
        self.objGUI.btn_transcribe_output.clicked.connect(self.__listener_transcribe_output_browse)
        self.objGUI.btn_transcribe_transcribe.clicked.connect(self.__listener_transcribe)
        self.objGUI.btn_transcribe_cancel.clicked.connect(self.__listener_transcribe_cancel)
        # endregion

        # region Translate
        self.objGUI.btn_translate_file_add.clicked.connect(self.__listener_translate_file_add)
        self.objGUI.btn_translate_file_remove.clicked.connect(self.__listener_translate_file_remove)
        self.objGUI.chk_translate_googleTranslate.clicked.connect(self.__listener_google_translate)
        self.objGUI.btn_translate_output.clicked.connect(self.__listener_translate_output_browse)
        self.objGUI.btn_translate_translate.clicked.connect(self.__listener_translate)
        self.objGUI.btn_translate_cancel.clicked.connect(self.__listener_cancel_translate)
        # endregion

    # Initialise Values
    def __initValue__(self):
        # Selection Value
        self.objGUI.cbo_transcribe_language.clear()
        self.objGUI.cbo_transcribe_language.addItems(Transcribe.MODELS)

        self.objGUI.cbo_translate_sourceLanguage.clear()
        self.objGUI.cbo_translate_sourceLanguage.addItems(Translate.LANG_CHOICES.keys())

        self.objGUI.cbo_translate_outputLanguage.clear()
        self.objGUI.cbo_translate_outputLanguage.addItems(
            [choice for choice in Translate.LANG_CHOICES.keys() if choice.lower() != 'auto']
        )

        self.objGUI.cbo_translate_model.clear()
        self.objGUI.cbo_translate_model.addItems(ModelTranslator.MODEL_CHOICES.keys())

        # Transcribe
        self.objGUI.stackedWidget.setCurrentWidget(self.objGUI.pg_mainMenu)
        self.objGUI.pgr_transcribe_file_import.setValue(0)
        self.objGUI.lbl_transcribe_file_import.setText("")
        self.objGUI.lbl_transcribe_player_timer.setText("00:00")
        self.objGUI.lbl_transcribe_player_length.setText("00:00")
        self.objGUI.sld_transcribe_player.setMinimum(0)
        self.objGUI.sld_transcribe_player.setMaximum(0)
        self.objGUI.sld_transcribe_player.setValue(0)
        self.objGUI.txt_transcribe_output.setText("")
        self.objGUI.pgr_transcribe_transcribe.setValue(0)
        self.objGUI.lbl_transcribe_status.setText("")

        # Translate
        self.objGUI.chk_translate_googleTranslate.setChecked(False)
        self.objGUI.pgr_translate_translate.setValue(0)
        self.objGUI.lbl_translate_status.setText("")
        self.objGUI.cbo_translate_outputLanguage.setCurrentIndex(
            self.objGUI.cbo_translate_outputLanguage.findText(
                self.default_language, Qt.MatchExactly))

    # Disable Buttons
    def __initDisabled__(self):
        # Transcribe
        self.objGUI.btn_transcribe_file_remove.setEnabled(False)
        self.objGUI.btn_transcribe_player_play.setEnabled(False)
        self.objGUI.btn_transcribe_player_pause.setEnabled(False)
        self.objGUI.btn_transcribe_player_stop.setEnabled(False)
        self.objGUI.sld_transcribe_player.setEnabled(False)
        self.objGUI.btn_transcribe_transcribe.setEnabled(False)
        self.objGUI.btn_transcribe_cancel.setEnabled(False)

        # Translate
        self.objGUI.btn_translate_file_remove.setEnabled(False)
        self.objGUI.cbo_translate_sourceLanguage.setEnabled(False)
        self.objGUI.cbo_translate_outputLanguage.setEnabled(False)
        self.objGUI.btn_translate_translate.setEnabled(False)
        self.objGUI.btn_translate_cancel.setEnabled(False)

    # Initialise Variables
    def __initVar__(self):
        # File Constants
        self.__FILEBROWSER_PATH__ = os.path.join(os.getenv("WINDIR"), "explorer.exe")
        self.__REQUIRED_DIRECTORIES__ = ["audio", "history", "logs"]
        self.__initDir__()
        self.__RECORDING_PATH__ = FileOperations.check_directory(Path("audio\\recordings"))
        self.__CONVERT_PATH__ = FileOperations.check_directory(Path("audio\\imports"))
        self.__SPLIT_PATH__ = FileOperations.check_directory(Path("audio\\temp"))
        self.__TRANSCRIBE_HISTORY_PATH__ = FileOperations.absolute_path(Path("history\\transcription.txt"))
        self.__TRANSLATE_HISTORY_PATH__ = FileOperations.absolute_path(Path("history\\translation.txt"))
        self.__OUTPUT_PATH__ = FileOperations.check_directory(Path("output\\captions"))
        self.__LOG_PATH__ = FileOperations.check_directory(Path("logs"))

        # Filters
        self.__MEDIA_FILTERS__ = ["All Supported Media (*.mp3 *.wav *.m4a *.ogg *.mp4 *.mkv *.mov)",
                                  "Audio Files (*.mp3 *.wav *.m4a *.ogg)",
                                  "Video Files (*.mp4 *.mkv *.mov)",
                                  "MP3 (*.mp3)",
                                  "WAV (*.wav)",
                                  "M4A (*.m4a)",
                                  "OGG (*.ogg)",
                                  "MP4 (*.mp4)",
                                  "MKV (*.mkv)",
                                  "MOV (*.mov)"]
        self.__TEXT_FILTERS__ = ["All Supported Files (*.txt *.srt)",
                                 "TXT Files (*.txt)",
                                 "SRT Files (*.srt)"]

        # File
        self.__is_converting = False
        self.__imported_files = {}  # "Source": [Destination, Output Path (Where to output caption)]
        self.__convert_thread = None
        self.__convert_thread_cancel = None

        # Recording
        self.__is_recording = False
        self.__record_thread = None
        self.__record_thread_stop = None

        # Transcribe
        self.__is_transcribing = False
        self.__transcribe_thread = None
        self.__transcribe_thread_cancel = None

        # Translate
        self.__is_translating = False
        self.__translate_thread = None
        self.__translate_thread_cancel = None

        # Player
        self.__player = None

    # Build Required Directories
    def __initDir__(self):
        FileOperations.build_directories(self.__REQUIRED_DIRECTORIES__)
    # endregion

    # region Listeners
    # region Transcribe
    # region Cancel
    def __listener_transcribe_cancel(self):
        if self.__is_converting:
            if Dialog.ConfirmationDialog("Are you sure you want to cancel file imports?", "Cancellation", self):
                self.__thread_cancel_transcribe_file()
        if self.__is_transcribing:
            if Dialog.ConfirmationDialog("Are you sure you want to cancel transcription?", "Cancellation", self):
                self.__thread_cancel_transcribe()
    # endregion

    # region Transcribe File
    # Add File
    def __listener_transcribe_file_add(self):
        # Get Files
        files = Dialog.FileDialog(self, "Select media", self.__MEDIA_FILTERS__)

        # Convert Files
        if files:
            self.__process_transcribe_file_add(files)

    # Remove File
    def __listener_transcribe_file_remove(self):
        # Get Selected
        selected = self.objGUI.lst_transcribe_file.selectedIndexes()

        # If not selected, prompt error
        if not selected:
            Dialog.ErrorDialog("Please select at least ONE file!", "No File Selected", self)
        else:
            self.__process_transcribe_file_remove(selected)
    # endregion

    # region Player
    # Slider Drag
    def __listener_player_slider(self):
        value = self.objGUI.sld_transcribe_player.value()
        self.objGUI.lbl_transcribe_player_timer.setText(self.__calculate_time(value))

    # Play Selected
    def __listener_player_play_selected(self):
        # Get Selected
        selected = self.objGUI.lst_transcribe_file.selectedIndexes()

        # If selected multiple, prompt error
        if len(selected) > 1:
            Dialog.InfoDialog("Please select only one file to play!", "Multiple Playback Detected", self)

        # If not selected, prompt error
        elif len(selected) == 0:
            Dialog.InfoDialog("Please select a file to play!", "No File Selected", self)

        else:
            selected = self.objGUI.lst_transcribe_file.item(selected[0].row()).text()
            self.__thread_start_play_selected(selected)

    # Play
    def __listener_player_play(self):
        self.__thread_start_play()

    # Pause
    def __listener_player_pause(self):
        self.__thread_start_pause()

    # Stop
    def __listener_player_stop(self):
        self.__thread_start_stop()
    # endregion

    # region Record
    def __listener_transcribe_record(self):
        # If recording, Stop recording
        if self.__is_recording:
            self.__thread_stop_transcribe_record()

        # If not recording, Start recording
        else:
            self.__thread_start_transcribe_record()
    # endregion

    # region Transcribe Output Path
    def __listener_transcribe_output_browse(self):
        path = Dialog.DirectoryDialog(self)
        if path != "":
            self.objGUI.txt_transcribe_output.setText(path)
    # endregion

    # region Transcribe
    def __listener_transcribe(self):
        self.objGUI.btn_transcribe_transcribe.setEnabled(False)

        # Get Output Path
        output_path = self.__get_output_path(self.objGUI.txt_transcribe_output)

        # If invalid output path, stop
        if output_path is False:
            self.objGUI.btn_transcribe_transcribe.setEnabled(True)
            return

        # Get Model
        model = self.objGUI.cbo_transcribe_language.currentText()

        self.__thread_start_transcribe(output_path, model)
    # endregion
    # endregion

    # region History
    def __listener_history(self, action):
        subprocess.run([self.__FILEBROWSER_PATH__, "/select,", action.objectName()])
    # endregion

    # region Translate
    # region Translate File
    # Add File
    def __listener_translate_file_add(self):
        # Get Files
        files = Dialog.FileDialog(self, "Select file", self.__TEXT_FILTERS__)

        # Add File
        if files:
            self.__process_translate_file_add(files)

    # Remove File
    def __listener_translate_file_remove(self):
        # Get Selected
        selected = self.objGUI.lst_translate_file.selectedIndexes()

        # If not selected, prompt error
        if not selected:
            Dialog.ErrorDialog("Please select at least ONE file!", "No File Selected", self)
        else:
            self.__process_translate_file_remove(selected)
    # endregion

    # region Google Translate Selection
    def __listener_google_translate(self):
        if self.objGUI.chk_translate_googleTranslate.isChecked():
            google_enabled = True
        else:
            google_enabled = False

        self.objGUI.cbo_translate_model.setEnabled(not google_enabled)
        self.objGUI.cbo_translate_sourceLanguage.setEnabled(google_enabled)
        self.objGUI.cbo_translate_outputLanguage.setEnabled(google_enabled)
    # endregion

    # region Translate Output Path
    def __listener_translate_output_browse(self):
        path = Dialog.DirectoryDialog(self)
        if path != "":
            self.objGUI.txt_translate_output.setText(path)
    # endregion

    # region Translate
    def __listener_translate(self):
        self.objGUI.btn_translate_translate.setEnabled(False)

        # If Google Translate, Check Internet
        google_translate = self.objGUI.chk_translate_googleTranslate.isChecked()
        if google_translate:
            window.setCursor(QCursor(Qt.WaitCursor))
            connected = UiFunction.check_internet(
                "Could not connect to Google Translate\nPlease check your Internet Connection!", True)
            window.setCursor(QCursor(Qt.ArrowCursor))
            if not connected:
                self.objGUI.btn_translate_translate.setEnabled(True)
                return

        # Get Output Path
        output_path = self.__get_output_path(self.objGUI.txt_translate_output)

        # If invalid output path, stop
        if output_path is False:
            self.objGUI.btn_translate_translate.setEnabled(True)
            return

        # Get Files
        files = []
        for row in range(self.objGUI.lst_translate_file.count()):
            files.append(self.objGUI.lst_translate_file.item(row).text())

        # Get Languages and Model
        src_language = self.objGUI.cbo_translate_sourceLanguage.currentText()
        des_language = self.objGUI.cbo_translate_outputLanguage.currentText()
        model = self.objGUI.cbo_translate_model.currentText()

        # Call for thread
        self.__thread_start_translate(files, output_path, google_translate, src_language, des_language, model)

    def __listener_cancel_translate(self):
        if self.__is_translating:
            if Dialog.ConfirmationDialog("Are you sure you want to cancel file translation?", "Cancellation", self):
                self.__thread_cancel_translate()
    # endregion
    # endregion

    # Refresh
    def __listener_refresh(self):
        if not (self.__is_converting or self.__is_transcribing):
            self.__process_transcribe_file_check()
        if not self.__is_transcribing:
            self.__reset_pgr(self.objGUI.pgr_transcribe_transcribe)
        if not self.__is_converting:
            self.__reset_pgr(self.objGUI.pgr_transcribe_file_import)
        if not self.__is_translating:
            self.__process_translate_file_check()
            self.__reset_pgr(self.objGUI.pgr_translate_translate)
    # endregion

    # region Backend Processes
    # region Transcribe
    # region Transcribe File
    # Add File
    def __process_transcribe_file_add(self, files: list):
        # Initialise
        convert_queue = []

        # Add to list, If same, Skip
        for file in files:
            file = FileOperations.absolute_path(Path(file))

            if not self.objGUI.lst_transcribe_file.findItems(str(file), Qt.MatchExactly):
                self.objGUI.lst_transcribe_file.addItem(str(file))
                convert_queue.append(file)

        self.__thread_start_transcribe_file(convert_queue)

    # Remove File
    def __process_transcribe_file_remove(self, selected: list):
        # Get selected
        selected_row = []
        selected_item = []

        for item in selected:
            selected_row.append(item.row())
            selected_item.append(item.data())

        # Remove Selected
        for i in sorted(selected_row, reverse=True):
            self.objGUI.lst_transcribe_file.takeItem(i)

        for i in selected_item:
            self.__imported_files.pop(Path(i), False)

        # Check for Button
        self.__process_transcribe_file_check()

    # Check File for Button Enabled
    def __process_transcribe_file_check(self):
        enabled = (self.objGUI.lst_transcribe_file.count() > 0)
        self.objGUI.btn_transcribe_file_remove.setEnabled(enabled)
        self.objGUI.btn_transcribe_transcribe.setEnabled(enabled)
    # endregion

    # region Player
    # Timer Player
    def __process_timer_player(self, seconds: int):
        self.objGUI.lbl_transcribe_player_timer.setText(self.__calculate_time(seconds))
        self.objGUI.sld_transcribe_player.setValue(seconds)

    # Timer Length
    def __process_timer_length(self, seconds):
        self.objGUI.lbl_transcribe_player_length.setText(self.__calculate_time(seconds))
        self.objGUI.sld_transcribe_player.setMaximum(seconds)

    # Reset Timer
    def __process_timer_reset(self):
        self.__process_timer_player(0)
        self.__process_timer_length(0)
    # endregion
    # endregion

    # region Translate
    # region Translate File
    # Add File
    def __process_translate_file_add(self, files: list):
        # Skip if already in
        for file in files:
            file = FileOperations.absolute_path(Path(file))

            if not self.objGUI.lst_translate_file.findItems(str(file), Qt.MatchExactly):
                self.objGUI.lst_translate_file.addItem(str(file))

        # Check for Button Enable
        self.__process_translate_file_check()

    # Remove File
    def __process_translate_file_remove(self, selected: list):
        # Get selected
        selected_row = []

        for item in selected:
            selected_row.append(item.row())

        # Remove Selected
        for i in sorted(selected_row, reverse=True):
            self.objGUI.lst_translate_file.takeItem(i)

        # Check for Button
        self.__process_translate_file_check()

    # Check File for Button Enabled
    def __process_translate_file_check(self):
        enabled = (self.objGUI.lst_translate_file.count() > 0)
        self.objGUI.btn_translate_file_remove.setEnabled(enabled)
        self.objGUI.btn_translate_translate.setEnabled(enabled)
    # endregion
    # endregion

    # Check Output Path
    def __get_output_path(self, obj):
        output_path = obj.text()

        # If empty, return None
        if output_path == "":
            return None

        # Else get output path
        output_path = FileOperations.absolute_path(Path(output_path))

        # Popup dialog if invalid folder + Return False
        if not (output_path.exists() and output_path.is_dir()):
            Dialog.ErrorDialog("Error! Invalid output folder.", parent=self)
            return False

        # Else return path
        return output_path
    # endregion

    # region Thread Processes
    # region Transcribe File
    def __thread_start_transcribe_file(self, convert_queue: list):
        if convert_queue:
            self.__initDir__()
            self.__convert_thread = ThreadConversion(convert_queue, self.__CONVERT_PATH__, self.__LOG_PATH__)
            self.__convert_thread.sgn_lock.connect(self.__thread_lock_transcribe_file)
            self.__convert_thread.sgn_progress.connect(self.__thread_pgr_transcribe_file)
            self.__convert_thread.sgn_invalid_audio.connect(self.__thread_err_transcribe_file)
            self.__convert_thread.sgn_finished.connect(self.__thread_fin_transcribe_file)
            self.__convert_thread.start()
            self.__is_converting = True

    def __thread_cancel_transcribe_file(self):
        self.__convert_thread_cancel = ThreadConversion_Cancel(self.__convert_thread)
        self.__convert_thread_cancel.sgn_cancelled.connect(
            lambda: self.__indefinite_pgr(self.objGUI.pgr_transcribe_file_import))
        self.__convert_thread_cancel.run()

    def __thread_lock_transcribe_file(self, lock: bool):
        enabled = not lock
        self.objGUI.btn_transcribe_file_record.setEnabled(enabled)
        self.objGUI.btn_transcribe_file_add.setEnabled(enabled)
        self.objGUI.btn_transcribe_file_remove.setEnabled(enabled)
        self.objGUI.btn_transcribe_transcribe.setEnabled(enabled)
        self.objGUI.btn_transcribe_player_playSelected.setEnabled(enabled)
        self.objGUI.lst_transcribe_file.parent().setAcceptDrops(enabled)

        self.objGUI.btn_transcribe_cancel.setEnabled(not enabled)

    def __thread_pgr_transcribe_file(self, string: str, percent: int):
        self.objGUI.pgr_transcribe_file_import.setValue(percent)
        self.objGUI.lbl_transcribe_file_import.setText(string)

    def __thread_err_transcribe_file(self, message: str, filename: Path):
        # Remove Invalid File
        items = self.objGUI.lst_transcribe_file.findItems(str(filename), Qt.MatchExactly)
        for item in items:
            row = self.objGUI.lst_transcribe_file.row(item)
            self.objGUI.lst_transcribe_file.takeItem(row)

        # Popup Message
        Dialog.InfoDialog(message, "File Import Error!", self)

    def __thread_fin_transcribe_file(self, file_list: dict):
        # Pass over complete list
        self.__imported_files = {**self.__imported_files, **file_list}

        # Recheck and remove files not in the list
        for row in range(self.objGUI.lst_transcribe_file.count() - 1, -1, -1):
            if self.objGUI.lst_transcribe_file.item(row).text() not in [str(key)
                                                                        for key in self.__imported_files.keys()]:
                self.objGUI.lst_transcribe_file.takeItem(row)

        # Reset Progress Bar if not
        self.__reset_pgr(self.objGUI.pgr_transcribe_file_import)

        # Check To Enable Transcribe Button
        self.__process_transcribe_file_check()

        # Stop Thread
        if self.__convert_thread:
            self.__convert_thread.wait()
        if self.__convert_thread_cancel:
            self.__convert_thread_cancel.wait()
        self.__is_converting = False
    # endregion

    # region Player
    # Play Selected
    def __thread_start_play_selected(self, selected: str):
        # Start Player If Not
        if self.__player is None:
            self.__player = ThreadPlayer()
            self.__player.sgn_timer.connect(self.__process_timer_player)
            self.__player.sgn_length.connect(self.__process_timer_length)
            self.__player.sgn_lock.connect(self.__thread_lock_player)
            self.__player.sgn_error.connect(lambda msg, title: Dialog.ErrorDialog(msg, title, self))
            self.__player.start()

        # Get Converted File
        try:
            file_player = self.__imported_files[Path(selected)][0]

            # Load File
            play_selected = ThreadPlayer_PlaySelected(self.__player, file_player)
            play_selected.run()

            self.objGUI.lbl_transcribe_player_status.setText(selected)

        except KeyError:
            Dialog.ErrorDialog("File Not Found from Imported Files!", "File Not Found!", self)

    # Play
    def __thread_start_play(self):
        ThreadPlayer_Play(self.__player, self.objGUI.sld_transcribe_player.value()).run()

    # Pause
    def __thread_start_pause(self):
        ThreadPlayer_Pause(self.__player).run()

    # Stop
    def __thread_start_stop(self):
        ThreadPlayer_Stop(self.__player).run()

    # Lock Player
    def __thread_lock_player(self, lock: bool):
        enabled = not lock
        self.objGUI.sld_transcribe_player.setEnabled(enabled)
        self.objGUI.btn_transcribe_player_play.setEnabled(enabled)
        self.objGUI.btn_transcribe_player_playSelected.setEnabled(enabled)

        self.objGUI.btn_transcribe_player_pause.setEnabled(not enabled)
        self.objGUI.btn_transcribe_player_stop.setEnabled(not enabled)
    # endregion

    # region Record
    # Start Recording
    def __thread_start_transcribe_record(self):
        self.__initDir__()
        self.__record_thread = ThreadRecording(self.__RECORDING_PATH__, self.__LOG_PATH__)
        self.__record_thread.sgn_lock.connect(self.__thread_lock_transcribe_record)
        self.__record_thread.sgn_length.connect(self.__process_timer_length)
        self.__record_thread.sgn_timer.connect(self.__thread_sgn_transcribe_record_timer)
        self.__record_thread.sgn_finished.connect(self.__thread_fin_transcribe_record)
        self.__record_thread.start()
        self.__is_recording = True
        self.objGUI.lbl_transcribe_player_status.setText("Starting Recording!")
        self.objGUI.btn_transcribe_file_record.setToolTip("Stop Record")

    # Stop Recording
    def __thread_stop_transcribe_record(self):
        self.objGUI.lbl_transcribe_player_status.setText("Stopping Recording!")
        self.__record_thread_stop = ThreadRecording_Stop(self.__record_thread)
        self.__record_thread_stop.run()

    # Lock Recording
    def __thread_lock_transcribe_record(self, lock):
        if lock:
            self.objGUI.btn_transcribe_file_record.setIcon(UiStyle.record_icon('recording'))
        else:
            self.objGUI.btn_transcribe_file_record.setIcon(UiStyle.record_icon('not_recording'))
        enabled = not lock

        self.objGUI.btn_transcribe_file_add.setEnabled(enabled)
        self.objGUI.btn_transcribe_file_remove.setEnabled(enabled)
        self.objGUI.btn_transcribe_player_playSelected.setEnabled(enabled)
        self.objGUI.btn_transcribe_transcribe.setEnabled(enabled)
        self.objGUI.btn_transcribe_cancel.setEnabled(enabled)

        self.objGUI.btn_transcribe_player_play.setEnabled(False)
        self.objGUI.btn_transcribe_player_pause.setEnabled(False)
        self.objGUI.btn_transcribe_player_stop.setEnabled(False)
        self.objGUI.sld_transcribe_player.setEnabled(False)

        self.objGUI.lst_transcribe_file.parent().setAcceptDrops(enabled)

    # Recording Signal
    def __thread_sgn_transcribe_record_timer(self, seconds: int):
        # Alternate Icon
        if seconds % 2 == 0:
            self.objGUI.btn_transcribe_file_record.setIcon(UiStyle.record_icon('not_recording'))
        else:
            self.objGUI.btn_transcribe_file_record.setIcon(UiStyle.record_icon('recording'))

        # Set Status Label
        text = "Recording.{}".format("." * (seconds % 5))
        self.objGUI.lbl_transcribe_player_status.setText(text)

        # Set Timer
        self.__process_timer_player(seconds)

    # Finish Recording
    def __thread_fin_transcribe_record(self, file):
        # Add Recording File
        self.__initDir__()
        self.objGUI.lst_transcribe_file.addItem(str(file))
        self.__imported_files[file] = [file, self.__OUTPUT_PATH__]

        # Check To Enable Transcribe Button
        self.__process_transcribe_file_check()

        # Reset condition and Timer
        self.__is_recording = False
        self.__process_timer_reset()

        # Stop Thread
        if self.__record_thread:
            self.__record_thread.wait()
        if self.__record_thread_stop:
            self.__record_thread_stop.wait()

        # Set Status Label
        self.objGUI.lbl_transcribe_player_status.setText("Recording Finished!")
        self.objGUI.btn_transcribe_file_record.setToolTip("Record Audio")

        # Delete expired file
        self.__reload_delete_expired()
    # endregion

    # region Transcribe
    def __thread_start_transcribe(self, output_path: Optional[Path], model: str):
        # Call for Convert
        self.__initDir__()
        self.__transcribe_thread = ThreadTranscribe(self.__imported_files, output_path,
                                                    self.__SPLIT_PATH__, self.__LOG_PATH__,
                                                    model=model)
        self.__transcribe_thread.sgn_lock.connect(self.__thread_lock_transcribe)
        self.__transcribe_thread.sgn_progress.connect(self.__thread_pgr_transcribe)
        self.__transcribe_thread.sgn_error.connect(lambda msg, title: Dialog.ErrorDialog(msg, title, self))
        self.__transcribe_thread.sgn_finished.connect(self.__thread_fin_transcribe)
        self.__transcribe_thread.start()
        self.__is_transcribing = True

    def __thread_cancel_transcribe(self):
        self.__transcribe_thread_cancel = ThreadTranscribe_Cancel(self.__transcribe_thread)
        self.__transcribe_thread_cancel.sgn_cancelled.connect(
            lambda: self.__indefinite_pgr(self.objGUI.pgr_transcribe_transcribe))
        self.__transcribe_thread_cancel.run()

    def __thread_lock_transcribe(self, lock: bool):
        enabled = not lock
        self.objGUI.btn_transcribe_file_record.setEnabled(enabled)
        self.objGUI.btn_transcribe_file_add.setEnabled(enabled)
        self.objGUI.btn_transcribe_file_remove.setEnabled(enabled)
        self.objGUI.btn_transcribe_transcribe.setEnabled(enabled)
        self.objGUI.txt_transcribe_output.setEnabled(enabled)
        self.objGUI.btn_transcribe_output.setEnabled(enabled)
        self.objGUI.cbo_transcribe_language.setEnabled(enabled)

        self.objGUI.lst_transcribe_file.parent().setAcceptDrops(enabled)

        self.objGUI.btn_transcribe_cancel.setEnabled(not enabled)

    def __thread_pgr_transcribe(self, string: str, percent: int):
        self.objGUI.pgr_transcribe_transcribe.setValue(percent)
        self.objGUI.lbl_transcribe_status.setText(string)

    def __thread_fin_transcribe(self, file_list: list, output_list: list):
        # Display Info Message
        Dialog.InfoDialog("Files Completed:\n{0}".format("\n".join([str(x) for x in file_list])),
                          "Transcription Finished!", self)

        # Remove Converted Files
        for key in file_list:
            self.__imported_files.pop(key, False)

            items = self.objGUI.lst_transcribe_file.findItems(str(key), Qt.MatchExactly)
            for item in items:
                row = self.objGUI.lst_transcribe_file.row(item)
                self.objGUI.lst_transcribe_file.takeItem(row)

        # Reset Progress Bar if not
        self.__reset_pgr(self.objGUI.pgr_transcribe_transcribe)

        # Stop Thread
        if self.__transcribe_thread:
            self.__transcribe_thread.wait()
        if self.__transcribe_thread_cancel:
            self.__transcribe_thread_cancel.wait()
        self.__is_transcribing = False

        # Call to Write History
        self.__write_transcribe_history(output_list)

        # Check if there is anymore files
        self.__process_transcribe_file_check()
    # endregion

    # region Translate
    def __thread_start_translate(self, files: list, output_path: Path, google_translate: bool,
                                 src_language: str, des_language: str, model: str):
        # Call for Convert
        self.__initDir__()
        self.__translate_thread = ThreadTranslate(files, output_path, self.__LOG_PATH__,
                                                  src_language, des_language, not google_translate, model)
        self.__translate_thread.sgn_lock.connect(self.__thread_lock_translate)
        self.__translate_thread.sgn_progress.connect(self.__thread_pgr_translate)
        self.__translate_thread.sgn_err.connect(lambda msg, title: Dialog.ErrorDialog(msg, title, self))
        self.__translate_thread.sgn_finished.connect(self.__thread_fin_translate)
        self.__translate_thread.start()
        self.__is_translating = True

    def __thread_cancel_translate(self):
        self.__translate_thread_cancel = ThreadTranslate_Cancel(self.__translate_thread)
        self.__translate_thread_cancel.sgn_cancelled.connect(
            lambda: self.__indefinite_pgr(self.objGUI.pgr_translate_translate)
        )
        self.__translate_thread_cancel.run()

    def __thread_lock_translate(self, lock: bool):
        enabled = not lock
        self.objGUI.btn_translate_file_add.setEnabled(enabled)
        self.objGUI.btn_translate_file_remove.setEnabled(enabled)
        self.objGUI.btn_translate_translate.setEnabled(enabled)
        self.objGUI.txt_translate_output.setEnabled(enabled)
        self.objGUI.btn_translate_output.setEnabled(enabled)
        self.objGUI.cbo_translate_sourceLanguage.setEnabled(enabled)
        self.objGUI.cbo_translate_outputLanguage.setEnabled(enabled)
        self.objGUI.cbo_translate_model.setEnabled(enabled)
        self.objGUI.chk_translate_googleTranslate.setEnabled(enabled)

        self.objGUI.lst_translate_file.parent().setAcceptDrops(enabled)

        self.objGUI.btn_translate_cancel.setEnabled(not enabled)

    def __thread_pgr_translate(self, string: str, percent: int):
        self.objGUI.pgr_translate_translate.setValue(percent)
        self.objGUI.lbl_translate_status.setText(string)

    def __thread_fin_translate(self, file_list, output_list):
        # Display Info Message
        Dialog.InfoDialog("Files Completed:\n{0}".format("\n".join([str(x) for x in file_list])),
                          "Translation Finished!", self)

        # Remove Converted Files
        for file in file_list:
            items = self.objGUI.lst_translate_file.findItems(str(file), Qt.MatchExactly)
            for item in items:
                row = self.objGUI.lst_translate_file.row(item)
                self.objGUI.lst_translate_file.takeItem(row)

        # Reset Progress Bar if not
        self.__reset_pgr(self.objGUI.pgr_translate_translate)

        # Stop Thread
        if self.__translate_thread:
            self.__translate_thread.wait()
        if self.__translate_thread_cancel:
            self.__translate_thread_cancel.wait()
        self.__is_translating = False

        # Call to Write History
        self.__write_translate_history(output_list)

        # Check if there is anymore files
        self.__process_translate_file_check()

        # Check to enable language and model combobox
        self.__listener_google_translate()
    # endregion
    # endregion

    # region Histories
    def __write_history(self, output_list: list, title, history_file):
        for output in output_list:
            text = str(output)
            FileOperations.output_history(title, text, history_file)
        self.__reload_history()
        self.__reload_delete_expired()  # Clear after transcribe or translate

    def __write_transcribe_history(self, output_list: list):
        title = "Transcription Output"
        self.__initDir__()
        self.__write_history(output_list, title, self.__TRANSCRIBE_HISTORY_PATH__)

    def __write_translate_history(self, output_list: list):
        title = "Translation Output"
        self.__initDir__()
        self.__write_history(output_list, title, self.__TRANSLATE_HISTORY_PATH__)
    # endregion

    # region Reload & Refresh
    def __reload_history(self):
        # Clear History
        self.menu_history_transcribe.clear()
        self.menu_history_translate.clear()

        # Read History List
        transcription_history = FileOperations.read_history(self.__TRANSCRIBE_HISTORY_PATH__)
        translation_history = FileOperations.read_history(self.__TRANSLATE_HISTORY_PATH__)

        # Append QAction for Transcription History
        for path in transcription_history:
            shortened, original = FileOperations.shorten_path(path, num_of_char=100)
            new_action = QAction(shortened, self.menu_history_transcribe)
            new_action.setObjectName(str(original))
            new_action.setToolTip(str(original))
            self.menu_history_transcribe.addAction(new_action)

        # Append QAction for Translation History
        for path in translation_history:
            shortened, original = FileOperations.shorten_path(path, num_of_char=100)
            new_action = QAction(shortened, self.menu_history_translate)
            new_action.setObjectName(str(original))
            new_action.setToolTip(str(original))
            self.menu_history_translate.addAction(new_action)

    # Clear Expired Files
    def __reload_delete_expired(self):
        expiry_day = 7
        gb_size = 1024 * 1024 * 1024
        FileOperations.remove_old_files(self.__CONVERT_PATH__, expiry_day, max_size=5 * gb_size)
        FileOperations.remove_old_files(self.__RECORDING_PATH__, 2 * expiry_day, max_size=2 * gb_size)
        FileOperations.remove_old_files(self.__SPLIT_PATH__, expiry_day, max_size=0.5 * gb_size)
    # endregion

    # region Static Methods
    # Indefinite Progress Bar
    @staticmethod
    def __indefinite_pgr(pgr: QProgressBar):
        pgr.setMinimum(0)
        pgr.setMaximum(0)
        pgr.setValue(0)

    # Reset Progress Bar
    @staticmethod
    def __reset_pgr(pgr: QProgressBar):
        pgr.setMinimum(0)
        pgr.setMaximum(100)

    # Time Calculation
    @staticmethod
    def __calculate_time(seconds):
        """ Return in 00:00 string format """
        minutes = int((seconds - (seconds % 60)) / 60)
        seconds = int(seconds % 60)

        return "{0:02d}:{1:02d}".format(minutes, seconds)
    # endregion


# Execute
if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = UiMain()
    sys.exit(app.exec_())
