import sys
from PyQt5.QtGui import QGuiApplication,QIcon
from PyQt5.QtQml import QQmlApplicationEngine
from getTime import getTimeClass

app = QGuiApplication(sys.argv)
app.setWindowIcon(QIcon("horse-logo2.jpg"))
engine = QQmlApplicationEngine()
time = getTimeClass()
engine.rootContext().setContextProperty('time', time)
engine.load('main.qml')
engine.quit.connect(app.quit)
sys.exit(app.exec_())
