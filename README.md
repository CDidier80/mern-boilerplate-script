# Mern Boilerplate Script

## About

A scipt to give you a basic file/folder setup and dependency installation for your MERN app.

## Setup and Use

1. I keep my scripts in my root/home folder, in a sub-folder called scripts. I suggest you do the same or similar. To get to the root/home folder, in your terminal type cd ~ because the tilda ( ~ )is the symbol for the home folder. In your Mac Finder app it shows up as the one with a house icon. So all my scripts are stored in ~/scripts

   `mkdir scripts`

2. This matters because to run a shell script from any directory in the terminal, you have to type out the full path. In my case I have to type out ~/scripts/git-script.sh to run the script. But we're getting ahead of ourselves.

3. Copy the code chunk and then open a text editor, paste it in and then save it as [filename].sh. The .sh is the extension for shell scripts. Save the file in the directory you want to save it at - again I recommend ~/scripts as the folder to save your scripts in.

4. Navigate to that folder in your terminal.

   `cd ~/scipts`

5. Make the shell script executable. To do that you type the following in the terminal:

   `chmod +x <<the-correct-filename.sh>>`

6. Navigate to your projects folder and make a new folder that you intend to house your project. 
   
   `mkdir <<my-awesome-project>>`
   
   Then `cd` into that folder.
   
   `cd <<my-awesome-project>>`
   
   and run `pwd` to get the full path. Copy that - you will need to paste it shortly. It should look like `my-computer/my-projects/my-awesome-project`

7. Now run: `~/scripts/<<the-correct-filename.sh>>`

8. You will be prompted to put in the file path:

   `what is the absolute path to your local project directory?`

   Paste in the path and the script will run!!!
