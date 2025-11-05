# Intro

Number 1 rule of Github for research: NO PROTECTED DATA GETS COMMITTED OR PUSHED!

Github is essentially social media for code; anything included is public.  Choose carefully which files get committed and whenever you add/receive/make a file that should not be published on the internet, add it to your .gitignore file to add an extra check that it will not accidentally be uploaded.  If that does not make sense yet, keep reading and then come back to this when you're ready to start.

There are two main reasons we're using Github: 1. Everything can be easily backed up somewhere other than your laptop, 2. we can all work on the same code base without messing each other up.  If you're not familiar with git, especially if you're using R, I'd recommend looking over [this](https://happygitwithr.com/).

## File structure:

The README in the base folder will show up as the project description on github so it should be polished and professional.

The primary folders are:

├──Analysis

├──Data

    ├──Raw_data
    
    ├──Clean_data
    
    ├──Results
    
├──Figures

This set up is intended to make it easy to find what you're looking for while making it clear which type of data you are working with.  Code goes in the `Analysis` folder, data in the `Data` subfolders, and figures in the `Figures` folder.

You should almost never save data to the `Raw_data` folder.  Anything modified goes in `Clean_data` so you don't accidentally overwrite the raw data and lose it forever (assuming something also happens to whatever back up system you have happening).

# Workflow

First, make a work plan.  Sketch out a list of the major steps of your project.  If you're not sure, your mentor or teammates are a great resource to ask.  Things will change as the project goes on, but having some sort of direction is helpful because at some point you will realize you don't know what comes next and this way you have something to refer back to.

If you haven't used the command line/haven't used it on whatever operating system you'll be using, I'd recommend following the RStudio instructions and using the gui (graphical user interface, i.e. click buttons that tell you what they do).  If you'd rather/need to use the command line or aren't using R, skip to the command line version. I've adapted a lot of this from [here](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow).

## RStudio version

If you've linked your local R project and the github repo correctly, there should be a tab in the top right called `Git`.  

For each major step of coding work, create a new branch with a comprehensible name from the main branch. First, make sure your local version is up to date with the remote version.Next to where it says `New Branch`, there's a dropdown menu of branches. Pick `main`.  Then click `Pull`.

Then create a new branch by clicking `New Branch`. Give it an informative name, and leave the remote as `origin`.  Select the new branch from the dropdown menu next to the `New Branch` button.

Start working on your project, and after each sub-step (e.g. if your major step is data cleaning and you finished cleaning the demographic data that's a sub-step), make a commit and add it to the remote repo.  This gives you a check point to come back to if you break your code later or spill coffee on your laptop.

In the Git menu, click the box under `staged` for each file you want to commit (again, no sensitive data here!), then press `commit` and add a commit message (this makes it easier to find which step you want to go back to), and click `push` to push your commit to the remote version of your branch.

When you're ready for someone to review your code, or done with a major step, go to Github and create a pull request.  This will create a designated space for feedback, and you can resolve their suggestions locally, make a new commit, and push just like before, and then once everyone/your mentor is on board your branch can be merged in to the main branch.

If you get an error when you try to merge, open one of the files causing problems. Somewhere there will be something like

```
<<<<<< main
some changes someone made
======
some changes you made
>>>>>> major-step
```

Clean up that section of the file and delete the `<<<<` and `====` and `>>>>` lines.  Once you've done this for all the conflicting files, make a new commit with all the conflicting files and it should work now.

Now you can delete the branch you were working on since it's all safely merged into the main branch. Right click on the branch name in the drop down and select `Delete Branch`.

## Command line version

For each major step of coding work, create a new branch with a comprehensible name from the main branch. First, make sure your local version is up to date with the remote version.

```
git checkout main
git fetch origin
git reset --hard origin/main
```

Then create a new branch

```
git checkout -b major-step
```

The `-b` flag creates the branch if it doesn't exist, and the branch name goes where `major-step` is.  Pick something informative so when you look over the history later it makes sense.

Start working on your project, and after each sub-step (e.g. if your major step is data cleaning and you finished cleaning the demographic data that's a sub-step), make a commit and add it to the remote repo.  This gives you a check point to come back to if you break your code later or spill coffee on your laptop.

```
git add <the files you were working on>
git commit -m "Explanation of what you just did"
git push -u origin major-step
```

The first line picks which files you're committing (again, no sensitive data here!), the second makes the commit and adds a commit message (this makes it easier to find which step you want to go back to), and the third pushes it to the remote version of your branch.

When you're ready for someone to review your code, or done with a major step, go to Github and create a pull request.  This will create a designated space for feedback, and you can resolve their suggestions locally, make a new commit, and push just like before, and then once everyone/your mentor is on board your branch can be merged in to the main branch.

```
git checkout main
git pull
git merge major-step
git push
```

If you get an error when you try to merge, use `git status` to see which files are the problem.  If you open one of those files somewhere there will be something like

```
<<<<<< main
some changes someone made
======
some changes you made
>>>>>> major-step
```

Clean up that section of the file and delete the `<<<<` and `====` and `>>>>` lines.  Once you've done this for all the conflicting files, make a new commit with all the conflicting files and it should work now.

Now you can delete the branch you were working on since it's all safely merged into the main branch.

```
git branch -d major-step
```