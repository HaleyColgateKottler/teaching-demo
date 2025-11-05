# Set Up

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

Students should almost never save data to the `Raw_data` folder.  Anything modified goes in `Clean_data` so you don't accidentally overwrite the raw data and lose it forever (assuming something also happens to whatever back up system you have happening).

I added the most common types of data I work with to the `.gitignore` file; add whatever you work with as insurance against students pushing data that should not be pushed. 

I have an MIT license attached, as a standard and pretty open software license but there are other options if you'd prefer or are required to by your dependencies.  Students should be included in that discussion/decision if they're likely to write or use software in the future. Github put together a [guide](https://choosealicense.com/) which is a good resource for licensing questions.

## Branch protections:

Part of my goal is to teach good collaborative coding habits, so the main branch is protected and requires a pull request and an approval for merges.  It also requires conversation resolution and signed commits.

## CI:

Currently there's an R lintr set up to run every time anyone tries to push to the project.  Students should also be shown how to run `lintr` (and maybe `styler`) locally.  I have a .lintr file added to allow for dotted.case variable names and 120 character lines, adjust as you like.

# Basic Workflow

I know trunk based workflows are used more in production code but they're usually overkill for academic research coding. I like a feature branching workflow because it allows students to repeatedly practice git, promotes planning out analysis steps, and provides clear opportunities for code reviews.

Students should create a workplan of analysis steps (knowing that data is data so stuff will change when the inevitable oddities pop up).  For each step they should create a new branch, do the work, and then create a pull request wherein you do a code review (either you or another student) and resolve any issues.  If there's only one student, they can keep working on the same branch but with more than one after a branch is merged in it should be cleaned up and a new branch created for the next step.  This sometimes leads to messy rebasing but that's also good practice for both how to rebase and how to coordinate with other people.

More details on the command line or RStudio commands are in the `For_Mentees.md` file,  but [here](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow) is a good overview.
