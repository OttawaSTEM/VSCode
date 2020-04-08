# Setup Microsoft Visual Studio Code
## 1. Download and install Microsoft Visual Studio Code
<https://go.microsoft.com/fwlink/?Linkid=852157>

## 2. Download and install Git
<https://git-scm.com/download/win>

## 3. Setup C++ Compile Environment
<https://astuteinternet.dl.sourceforge.net/project/mingw-w64/Toolchains%20targetting%20Win32/Personal%20Builds/mingw-builds/installer/mingw-w64-install.exe>
Add "C:\Tools\Mingw-w64\mingw64\bin" to system path
## 4. Create "C++" under "Workspace"

## 6. Copy ".gitignore" file to "C++"
Copy .gitignore from google drive to C++ folder.

## 7. Copy C++ setting files to ".vscode"

## 5. Setup Github account
Create "CPP" in resportory in Github
```
echo "# C++" >> README.md   
git init 
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/<user_name>/cpp.git
git push -u origin master
```

# Others
## Install Lego Digital Designer Adobe Flash Error
Here is the workaround:
1. Start LDD installer, proceed until it Adobe Flash Player warning (don't press Yes yet)
2. Open this folder: %TEMP%\WZSE0.TMP\
3. Delete this file: install_flash_player_active_x.exe
4. Find OpenGLChecker.exe and rename it as: install_flash_player_active_x.exe
5. Click Yes

## Remove github old credentials
1. Mac
In "Spotlight" search "keychain"

2. Windows
Search "Windows credentials"


## Python
Pylint is a Python static code analysis tool which looks for programming errors, helps enforcing a coding standard, sniffs for code smells and offers simple refactoring suggestions.  
    $ pip install pylint

