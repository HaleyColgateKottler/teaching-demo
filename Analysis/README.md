# Lintr and styler (aka make your code more readable)

Running lintr and styler:

For each analysis file, before you push to github, in the console run

```{r}
library(styler)

style_file(file.path("Analysis", "styled_example.R"))
```

swapping out "styled_example.R" for your file name.  Styler fixes basic issues like spacing or using either `=` or `<-` where appropriate. Double check the changes it made!

Then, run

```{r}
library(lintr)

lint(filename = file.path("Analysis", "styled_example.R"))
```

and fix anything the linter brings up when possible.  Otherwise, when you push a commit to github you will have to deal with a warning that your commit didn't pass the linter.