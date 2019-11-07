import pyautogui
import random

amplada, alcada = pyautogui.size()

def movimentAleatori():
    amplada_random = random.randint(10,amplada)
    alcada_random = random.randint(10,alcada)
    pyautogui.moveTo(amplada_random,alcada_random,1)

while True:
    movimentAleatori()
    #pyautogui.keyDown('enter')
    #pyautogui.keyUp('tab')
        break
