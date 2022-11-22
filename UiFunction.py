# Backend Files
from typing import List

import requests

import FileOperations
import Dialog

# UI Files
from UiPageChanger import UiPageChanger
from UiSideResizeGrip import UiSideResizeGrip
import UiStyle

# UI Libraries
from PyQt5.QtGui import QColor, QMouseEvent, QDropEvent, QDragEnterEvent, QGuiApplication
from PyQt5.QtWidgets import (QPushButton, QGraphicsDropShadowEffect, QSizeGrip,
                             QMainWindow, QFrame, QStackedWidget, QListWidget)
from PyQt5.QtCore import QPropertyAnimation, QEasingCurve, QSize, Qt, QPointF, QPoint

menu_toggled = False
maximized = False
just_restored = False
hidden = False


def toggle_menu(window: QMainWindow, menu: QFrame, min_width=70, max_width=270, duration=300):
    global menu_toggled

    # Get current width
    start_width = menu.width()

    # Set end width (Close or Open)
    if menu_toggled:
        end_width = min_width
    else:
        end_width = max_width
    menu_toggled = not menu_toggled

    # Start Animation
    window.animation = QPropertyAnimation(menu, b"minimumWidth")
    window.animation.setDuration(duration)
    window.animation.setStartValue(start_width)
    window.animation.setEndValue(end_width)
    window.animation.setEasingCurve(QEasingCurve.InOutQuart)
    window.animation.start()


def change_page(button_frame: QFrame, button: QPushButton, stacked_widget: QStackedWidget, page, duration=100):
    # Get Current Page
    current_page = stacked_widget.currentWidget()

    # Change Page
    stacked_widget.page_changer = UiPageChanger(current_page, page, duration)
    stacked_widget.setCurrentWidget(page)

    # Set Menu Selection
    reset_menu_selection(button_frame)
    select_menu(button)


def select_menu(button: QPushButton):
    button.setStyleSheet(button.styleSheet() + UiStyle.menu_select_style)
    button.setEnabled(False)


def reset_menu_selection(button_frame: QFrame):
    for buttons in button_frame.children():
        if isinstance(buttons, QPushButton):
            buttons.setStyleSheet(buttons.styleSheet().replace(UiStyle.menu_select_style, ""))
            buttons.setEnabled(True)


def close(window: QMainWindow):
    if Dialog.ConfirmationDialog("Are you sure you want to exit?", "Confirm Exit", window):
        window.close()

def maximize(window: QMainWindow, button: QPushButton):
    global maximized, hidden

    if maximized:
        window.showNormal()
        button.setIcon(UiStyle.maximize_icon('maximize'))
        button.setToolTip("Maximize")

        window.top_resize.show()
        window.bottom_resize.show()
        window.left_resize.show()
        window.right_resize.show()

    else:
        window.showMaximized()
        button.setIcon(UiStyle.maximize_icon('restore'))
        button.setToolTip("Restore")

        window.top_resize.hide()
        window.bottom_resize.hide()
        window.left_resize.hide()
        window.right_resize.hide()

    maximized = not maximized
    button.setIconSize(QSize(16, 16))


def hide_title_bar(window: QMainWindow, maximize_button: QPushButton,
                   custom_title_bar: QFrame,  mainframe: QFrame, hide=True):
    global hidden
    hidden = hide

    if hide:
        window.setWindowFlag(Qt.FramelessWindowHint)
        window.setAttribute(Qt.WA_TranslucentBackground)
        custom_title_bar.mouseDoubleClickEvent = lambda event: maximize(window, maximize_button)

        # Drop Shadow
        window.shadow = QGraphicsDropShadowEffect(window)
        window.shadow.setBlurRadius(17)
        window.shadow.setXOffset(0)
        window.shadow.setYOffset(0)
        window.shadow.setColor(QColor(0, 0, 0, 150))
        mainframe.setGraphicsEffect(window.shadow)

        # Resizer
        window.top_left_resize = QSizeGrip(window.objGUI.window_topLeft)
        window.top_right_resize = QSizeGrip(window.objGUI.window_topRight)
        window.bottom_left_resize = QSizeGrip(window.objGUI.window_bottomLeft)
        window.bottom_right_resize = QSizeGrip(window.objGUI.window_bottomRight)

        window.top_resize = UiSideResizeGrip(window.objGUI.window_top, Qt.TopEdge)
        window.bottom_resize = UiSideResizeGrip(window.objGUI.window_bottom, Qt.BottomEdge)
        window.left_resize = UiSideResizeGrip(window.objGUI.window_left, Qt.LeftEdge)
        window.right_resize = UiSideResizeGrip(window.objGUI.window_right, Qt.RightEdge)

        window.objGUI.window_topLeft.setMinimumSize(2, 2)
        window.objGUI.window_topRight.setMinimumSize(2, 2)
        window.objGUI.window_bottomLeft.setMinimumSize(2, 2)
        window.objGUI.window_bottomRight.setMinimumSize(2, 2)

        window.top_left_resize.setMinimumSize(2, 2)
        window.top_right_resize.setMinimumSize(2, 2)
        window.bottom_left_resize.setMinimumSize(2, 2)
        window.bottom_right_resize.setMinimumSize(2, 2)
        window.top_resize.setMinimumSize(window.width(), 2)
        window.bottom_resize.setMinimumSize(window.width(), 2)
        window.left_resize.setMinimumSize(2, window.height())
        window.right_resize.setMinimumSize(2, window.height())


def resize_window(window: QMainWindow):
    window.top_resize.setMinimumSize(window.width(), 2)
    window.bottom_resize.setMinimumSize(window.width(), 2)
    window.left_resize.setMinimumSize(2, window.height())
    window.right_resize.setMinimumSize(2, window.height())


def move_window(event: QMouseEvent, window: QMainWindow, button: QPushButton):
    if event.buttons() == Qt.LeftButton:
        # Restore if maximized
        if maximized:
            # Get window and click details
            maximized_width = window.width()
            click_point = window.click_pos.toPoint()
            left_length = click_point.x()
            top_length = click_point.y()

            # Restore
            maximize(window, button)
            restore_width = window.width()

            # Get restored click pos
            scale = restore_width / maximized_width
            window.click_pos = QPointF(left_length * scale, top_length)

        # Move
        window.move(event.globalPos() - window.click_pos.toPoint())
        event.accept()


def move_window_maximize(event: QMouseEvent, window: QMainWindow, button: QPushButton):
    mouse_pos = event.globalPos()
    cur_window_top = 0
    cur_window_hor_center = window.window_pos.x()
    cur_window_ver_center = window.window_pos.y()

    # Loop to check which screen
    for screen in QGuiApplication.screens():
        min_x = screen.geometry().x()
        max_x = screen.geometry().x() + screen.geometry().width()
        min_y = screen.geometry().y()
        max_y = screen.geometry().y() + screen.geometry().height()
        if min_x <= mouse_pos.x() <= max_x and min_y <= mouse_pos.y() <= max_y:
            cur_window_top = min_y
            cur_window_hor_center = (max_x + min_x) / 2
            cur_window_ver_center = (max_y + min_y) / 2
            break

    if -2 <= event.screenPos().y() - cur_window_top <= 2:
        window.move(QPoint(cur_window_hor_center - window.size().width() / 2,
                           cur_window_ver_center - window.size().height() / 2))
        maximize(window, button)

    elif window.pos().y() < cur_window_top:
        window.move(window.pos().x(), cur_window_top)


def droppable_drag_enter(event: QDragEnterEvent, widget: QListWidget, acceptable_format: List[str]):
    if event.mimeData().hasUrls():
        # Get files
        files = [u.toLocalFile() for u in event.mimeData().urls()]

        # Loop to check if there is acceptable file
        for file in files:
            _, _, filetype = FileOperations.filename_separator(file)
            if acceptable_format and filetype in acceptable_format:
                # Accept if there is acceptable file
                event.accept()

                # Change Background
                widget.setStyleSheet(widget.styleSheet() + UiStyle.drag_enter_style)
                return

    event.ignore()


def droppable_drag_leave(widget: QListWidget):
    widget.setStyleSheet(widget.styleSheet().replace(UiStyle.drag_enter_style, ""))


def droppable_drop(event: QDropEvent, widget: QListWidget, acceptable_format: List[str],
                   add_directly: bool = True, function: callable = None):
    # Get files
    files = [u.toLocalFile() for u in event.mimeData().urls()]
    acc_files = []
    err_files = []

    # Loop All File
    for file in files:
        # Check File Types
        _, _, filetype = FileOperations.filename_separator(file)
        if acceptable_format and filetype in acceptable_format:
            acc_files.append(file)
        else:
            err_files.append(file)

    # Emit Error if have
    if err_files:
        Dialog.ErrorDialog("Invalid File Type:\n{}".format('\n'.join(err_files)), "File Type Error!")

    # Emit Files Update if have
    if acc_files:
        if add_directly:
            widget.addItems(acc_files)
        else:
            function(acc_files)

    droppable_drag_leave(widget)


def check_internet(error_msg: str, print_dialog=False, proxies=None):
    connected = True
    try:
        # Try connecting Google (Easily Connected Website)
        res = requests.get('https://www.google.com', timeout=1, proxies=proxies)
        if res.status_code != 200:
            connected = False
    except OSError:
        connected = False

    # Print Dialog if no connection
    if not connected and print_dialog:
        Dialog.ErrorDialog(error_msg, "No Internet Connection")

    return connected
