# Update: How to Use GitHub Pages at Home!

#### As requested, this is a little tutorial on how you can work with GitHub and the Command Prompt from home! I've included everything I can think of in terms of what you'll need to do as well as issues you might encounter. If you run into any problems, please don't hesitate to email me with any questions you have!

### If you need to download the Processing IDE to your computer:

[Here's](https://processing.org/download/) the link to the website!

### After you log into GitHub...
1. Open up the **Command Prompt** if you have Windows or **Terminal** if you have a Mac. You can figure out where you are in your computer by checking right here:

  ![cp-loc](imgs/cp-loc.png)
  ![terminal-loc](imgs/terminal-loc.png)

  Alternatively, you can type in ```cd``` for the Command Prompt or ```pwd``` for Terminal, and it should tell you where you are as well.

2. On GitHub, go to your repository and click **Clone or download**. Then, click on the **clipboard symbol** to copy the url shown.

  ![clone](imgs/clone.png)

3. In the Command Prompt/Terminal, type in the command ```git clone``` followed by the url you copied. This'll put a copy of your GitHub files on your computer.  (ADD PIC FOR COMMAND PROMPT)

  ![git-clone](imgs/git-clone.png)
4. After all the files are on your computer, navigate to where they are located by using the command ```cd [your file path here]```.

  For example, if your files are organized like this:

  ![file-path](imgs/file-path.png)

  you can use ```cd``` for every folder, like in this example:

  ![long-nav](imgs/cd-long-nav.png)

  Or, you can type it in all in one line like this, with forward slashes separating each folder:

  ![short-nav](imgs/cd-short-nav.png)


  Pro tip: if you hit **tab** while you're typing in a folder's name, your computer will automatically finish it for you!

From here, you can go ahead and edit whatever files you need to! You don't need to clone your files onto your computer every time; as long as they're on there, and you navigate to them in the Command Prompt/Terminal via the ```cd``` command, you should be good. One piece of advice: **Do not edit your code directly on GitHub.** Not only is this a bad habit, but it also causes a lot of problems when you edit one file on GitHub and another directly on your computer, and then you try to publish your changes on GitHub (I'm sure a lot of you remember all the issues we had with this during camp 😕).


### To push up your changes to GitHub:

These commands should look familiar to you all now. **It's good practice to push up your changes to GitHub periodically.** For example, whenever you make major changes to one file, go ahead and push up those changes. If something goes wrong, it's better to only have a little bit of code messed up as opposed to a lot.

+ ```git status``` - Tells you what files have been changed, added, deleted, etc. in your repository
+ ```git add .``` - Stages your changes; makes them ready to go up on GitHub!
+ ```git commit -m "[describe what you did in the quotes]"``` - Commits all the changes you've **staged** to your repository
+ ```git push``` - Pushes all the commits you've made up to GitHub


### Common Issues ☹️

The biggest issue you'll probably face will look a little something like this:

![issue](imgs/issues.png)

Basically, if you make changes to the same file in two different places (like on GitHub and locally on your computer), and try to push up one of them, your computer doesn't know which version you want to keep.

**So, here's how you fix it!**

1. Use this command to pull in your GitHub code onto your computer: ```git pull --rebase origin master```

  It should tell you there's a ```CONFLICT``` and gives you some tips as to how to proceed:

  ![conflict](imgs/conflict.png)
2. Open up the files that are in conflict (in this case, it was an html file I had), and manually change it so that it looks like how you want it to.
3. Add your changes: ```git add .```
4. Continue the pulling process: ```git rebase --continue```
5. Finally, push up all your changes to GitHub: ```git push```

This is what the Command Prompt/Terminal should look like when everything's all fixed:

![fixed](imgs/conflict-fix.png)

#### That's it! You should have everything you need to use Processing and GitHub Pages from home. Again, _do not hesitate to email me_ if you have questions. Good luck!
