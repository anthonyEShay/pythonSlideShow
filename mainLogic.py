
from tkinter import *
from PIL import ImageTk, Image
import time
import os
import sys
import random

ssroot = []
loopController = 0

def getScreen():
    """
    Workaround to get the size of the current screen in a multi-screen setup.
    Returns: geometry (str): The standard Tk geometry string.
    [width]x[height]+[left]+[top]
    """
    troot = Tk()
    troot.update_idletasks()
    troot.attributes('-fullscreen', True)
    troot.state('iconic')
    geometry = troot.winfo_geometry()
    troot.destroy()
    return geometry

def getImage(aString, height, width):
    curImage = Image.open(aString) #r'%s' %
    iwidth, iheight = curImage.size
    if iheight > int(height):
        x = round(iheight / int(height), 1)
        #print(x)
        curImage = curImage.resize((int(iwidth/x), int(iheight/x)))
    iwidth, iheight = curImage.size
    if iwidth > int(width):
        x = round(iwidth / int(width), 1)
        #print(x)
        curImage = curImage.resize((int(iwidth/x), int(iheight/x)))
    iwidth, iheight = curImage.size
    return curImage, iwidth, iheight

def key(event):
    #print('Key %r (%r)' % (event.keysym, event.char))
    global loopController
    if event.char == ' ':
        loopController = 1 if loopController != 1 else 0
    elif event.keysym == 'Right':
        loopController = 2
    elif event.char == 'q':
        ssroot.destroy()
    '''
    if event.char == event.keysym:
        msg = 'Normal Key %r' % event.char
    elif len(event.char) == 1:
        msg = 'Punctuation Key %r (%r)' % (event.keysym, event.char)
    else:
        msg = 'Special Key %r' % event.keysym
    print(msg)
    '''

def main(ssOrder, ssLocation, ssTime):
    if ssOrder == 0:
        runInOrder(ssLocation, ssTime)
    else:
        runRandom(ssLocation, ssTime)

def runInOrder(ssLocation, ssTime):
    pictDir = ssLocation
    allFiles = os.listdir(pictDir)
    sSize = getScreen()
    #print(sSize)
    width = sSize.split('x')[0]
    height = sSize.split('x')[1]
    height = height.split('+')[0]
    print(width, height)
    global ssroot
    global loopController
    ssroot = Toplevel()
    ssroot.attributes('-fullscreen', True)
    ssroot.bind_all('<Key>', key)
    canvas = Canvas(ssroot, width = int(width), height = int(height))
    canvas.pack()
    PhotoImage(master = canvas, width = width, height = height)
    for pFile in allFiles:
        pForm = pFile.split(".")
        pForm = pForm[len(pForm)-1]
        pForm = pForm.lower()
        if pForm not in ["bmp", "gif", "jpg", "jpeg", "png"]:
            continue
        #canvas.delete("all")
        curImage, iwidth, iheight = getImage(pictDir + "\\" + pFile, height, width)
        img = ImageTk.PhotoImage(curImage)
        spacing = (int(width) - iwidth) // 2
        spacing2 = (int(height) - iheight) // 2
        canvas.create_image(spacing, spacing2, anchor=NW, image=img) 
        ssroot.update()
        startTime = time.time()
        while time.time() - startTime < ssTime:
            ssroot.update()
            while loopController == 1:
                ssroot.update()
            if loopController == 2:
                loopController = 0
                break

def runRandom(ssLocation, ssTime):
    pictDir = ssLocation
    allFiles = os.listdir(pictDir)
    sSize = getScreen()
    #print(sSize)
    width = sSize.split('x')[0]
    height = sSize.split('x')[1]
    height = height.split('+')[0]
    #print(width, height)
    global ssroot
    global loopController
    ssroot = Toplevel()
    ssroot.attributes('-fullscreen', True)
    ssroot.bind_all('<Key>', key)
    canvas = Canvas(ssroot, width = int(width), height = int(height))
    canvas.pack()
    PhotoImage(master = canvas, width = width, height = height)
    maxSize = len(allFiles) - 1
    while True:
        pFile = allFiles[random.randint(0, maxSize)]
        pForm = pFile.split(".")
        pForm = pForm[len(pForm)-1]
        pForm = pForm.lower()
        if pForm not in ["bmp", "gif", "jpg", "jpeg", "png"]:
            continue
        #canvas.delete("all")
        curImage, iwidth, iheight = getImage(pictDir + "\\" + pFile, height, width)
        img = ImageTk.PhotoImage(curImage)
        spacing = (int(width) - iwidth) // 2
        spacing2 = (int(height) - iheight) // 2
        canvas.create_image(spacing, spacing2, anchor=NW, image=img) 
        ssroot.update()
        startTime = time.time()
        while time.time() - startTime < ssTime:
            ssroot.update()
            while loopController == 1:
                ssroot.update()
            if loopController == 2:
                loopController = 0
                break

#main(1, r"C:\Users\muyma\Pictures\Pictures", 1)
