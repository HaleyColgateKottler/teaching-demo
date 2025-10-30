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

This set up is intended to make it easy to find what you're looking for while making it clear which type of data you are working with.  Students should almost never save data to the `Raw_data` folder.  Anything modified goes in `Clean_data` so you don't accidentally overwrite the raw data and lose it forever (assuming something also happens to whatever back up system you have happening).

I added the most common types of data I work with to the `.gitignore` file, add whatever you work with as insurance against students pushing data that should not be pushed. 


## Branch protections:

## CI:

Currently there's an R lintr set up to run every time anyone tries to push to the project.  Students should also be shown how to run `lintr` (and maybe `styler`) locally.  I have a .lintr file added to allow for dotted.case variable names and 120 character lines, adjust as you like.

# Basic Workflow

## Code reviews: