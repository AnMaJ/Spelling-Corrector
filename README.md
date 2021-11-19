# Spelling-Corrector
Corrects the spelling of command line arguments
## Instructions for running the perl program:
This spell corrector works only for one word linux internal commands namely:
man, which, chsh, whereis, passwd, date, cal, clear, sleep, alias, unalias, history, apropos, exit, logout, shutdown, ls, cat, more, less, touch, cp, mv, rm, script, find, mkdir, cd, pwd, rmdir, chmod, grep
### Since, there are endless possibilities for spelling a word incorrectly, I have made the following standard assumptions about the type of spelling mistakes:
 
1. The number of characters in the incorrect spelling is the same as the number of characters in the correct spelling.
2. The first character of the incorrect word is the same as the first character of the correct word i.e. if the word is 5 character long and is abcde, then the incorrect spelling should start with a only and should have the length 5.
## Steps for proper execution: 
1. After executing the above command line argument, type your command.
2. If there will be any error in the name of the command, the correct name of the command will be displayed under the incorrect command name.
3. Then, if you want to make the change in the name of the command which is prompted on the screen, then enter ‘y’ and press enter, otherwise enter any other letter, other than ‘y’ and press enter.
4. If you have pressed ‘y’, the updated statement with the correct command name will be displayed, otherwise, the initial statement would be displayed.
Here is a screenshot, showing the correct usage
![alt text](https://imgur.com/kidzzhN)
