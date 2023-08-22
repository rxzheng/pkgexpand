# pkgexpand
Expanding pkg files on macOS without using default app (Installer).

# Instructions
***NOTE THAT ALL FILE PATHS AND SHELL CODE ARE ONLY EXAMPLES. PLEASE CHANGE THE CODE TO FIT YOUR CIRCUMSTANCES.***
1. Download pkgutil.sh from this repository.
2. Download payload.sh from this repository. 
3. Open the pkgutil.sh file with a text editor of your choice. TextEdit is a good GUI choice that comes with MacOS.
4. Edit the pkgutil.sh file, replacing the variables (bits of text with "$" in front of them. Replace "$PATH" with the filepath to the .pkg you want to expand. Remember to add quotation marks around the file path if there are spaces in it. 
<details>
<summary> How to copy a file's filepath/pathname. </summary>
The path can be copied in Finder (on Mac) by right-clicking or control (⌃) + click on the .pkg file, and then clicking on the "copy"/"copy as pathname" button while holding option (⌥). This will copy the pathname of the file onto the clipboard, ready to be pasted. 
</details>
4. Replace $DESTINATIONFILE with the file path you want the expanded pkgfile to be, such as "/Users/me/Downloads/Expanded". Try to avoid spaces, as they break the  syntax. If you must use a space, use single or double quotation marks around the name. For example, "/Users/me/Desktop/Alex's expanded pkg" or '/Users/me/Music/A great "name" for a file'. 
5. Hit save, and run pkgutil.sh in the terminal. (Run code in terminal by entering bash code, some examples of which are shown below, and then pressing the enter/return key. If you don't know where terminal is ⌘ + space, and then spotlight search for it.) To run it, you can first change directory to the folder the shell (.sh) file is in, and then run it with the sh command. Here is an example if the .sh file is in your Downloads folder:

```bash
cd Downloads
sh pkgutil.sh
```

Alternatively, you can run it without changing directories by just providing the path of the shell file.
```bash
sh /Users/me/Downloads/pkgutil.sh
```

**Please note that the above code are examples and should be edited to fit your situation, depending on where your pkgutil.sh file is located.**

Once the command to execute the shell script has been run in the terminal, we will move on to the second stage of the process. 
6. Open the payload.sh file with a text editor of your choice. 
7. Replace $PAYLOAD with the file named "payload". This file should be found in the folder specified in pkgutil.sh, the one that replaced $DESTINATIONFILE. For the first example used in step 4, this would be in the folder named "Expanded" in the user's downloads folder. In the folder, find the .pkg file, and right-click or control (⌃) + click on it, and select "Show Package Contents". This should bring you into where the "payload" file is located. Copy the file path of the "payload" file go back to payload.sh, replacing $PAYLOAD with the file path you copied, remembering to add quotation marks around the file path if there are any spaces in it. 
8. Replace $INSTALLLOCATION with where you want to install the app. Remember, you can always change this by moving the app's location later. Copy the file path of the folder you would like to install the file and replace @INSTALLLOCATION with the copied path, remembering to add quotation marks around it if there are any spaces in the path. For example, "/Users/me/Desktop" if I wanted to install it on my desktop. 
9. Run payload.sh by opening terminal again, changing directories, and running it with the sh command. Here is an example if the .sh file is in your Downloads folder:

```bash
cd Downloads
sh payload.sh
```

**Please note that the above code are examples and should be edited to fit your situation, depending on where your pkgutil.sh file is located.**

10. And there we go! We've finished. If you've completed the process correctly, you will have the final app ready to be used in the folder that you specified in payload.sh, the file path that replaced $INSTALLLOCATION (my desktop in the example above).
