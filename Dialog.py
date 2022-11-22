from PyQt5.QtWidgets import QWidget, QMessageBox, QFileDialog


# Info Message
def InfoDialog(msg, title, parent: QWidget = None):
    dialog = QMessageBox(parent=parent)
    dialog.setIcon(QMessageBox.Information)

    dialog.setWindowTitle(title)
    dialog.setText(msg)
    dialog.exec()


# Error Message
def ErrorDialog(msg, title="Error!", parent: QWidget = None):
    dialog = QMessageBox(parent=parent)
    dialog.setIcon(QMessageBox.Critical)

    dialog.setWindowTitle(title)
    dialog.setText(msg)
    dialog.exec()


# Confirmation Message
def ConfirmationDialog(msg, title, parent: QWidget = None) -> bool:
    dialog = QMessageBox(parent=parent)
    dialog.setIcon(QMessageBox.Warning)

    dialog.setWindowTitle(title)
    dialog.setText(msg)
    dialog.setStandardButtons(QMessageBox.Yes | QMessageBox.No)

    reply = dialog.exec()
    reply = (reply == QMessageBox.Yes)

    return reply


# File Dialog
def FileDialog(self, caption, filters):
    files, _ = QFileDialog().getOpenFileNames(
        self, caption, "", ";;".join(filters), filters[0])
    return files


# File Dialog (Directory)
def DirectoryDialog(self):
    output_path = QFileDialog.getExistingDirectory(self)
    return output_path if output_path else ""
