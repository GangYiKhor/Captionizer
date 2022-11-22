from PyQt5.QtGui import QIcon, QPixmap, QFontDatabase

menu_select_style = "QPushButton { background-color: #2c313c; }"
drag_enter_style = "QListWidget { border: 2px dashed #005fae; background-color: #2b303b; }"
resizer_style = "QWidget { margin: 0px; padding: 0px; }"
maximize_image = ":/windows_control/resources/window_controls/maximize.png"
restore_image = ":/windows_control/resources/window_controls/restore.png"
microphone_image = ":/icons/resources/icons/microphone.png"
red_microphone_image = ":/icons/resources/icons/red_microphone.png"
fonts = [
    "resources\\fonts\\Lobster-Regular.ttf",
    "resources\\fonts\\SecularOne-Regular.ttf"
]


def maximize_icon(image="maximize"):
    icon = QIcon()

    # Maximize Icon
    if image == 'maximize':
        icon.addPixmap(QPixmap(maximize_image), QIcon.Normal, QIcon.Off)

    # Restore Icon
    elif image == 'restore':
        icon.addPixmap(QPixmap(restore_image), QIcon.Normal, QIcon.Off)

    return icon


def record_icon(image="not_recording"):
    icon = QIcon()

    # Not Recording Icon
    if image == 'not_recording':
        icon.addPixmap(QPixmap(microphone_image), QIcon.Normal, QIcon.Off)

    # Recording Icon
    elif image == 'recording':
        icon.addPixmap(QPixmap(red_microphone_image), QIcon.Normal, QIcon.Off)

    return icon


def register_font():
    for font in fonts:
        QFontDatabase.addApplicationFont(font)
