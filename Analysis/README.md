# teaching-demo

Running lintr and styler:

For each analysis file, before you push to github, in the console run

```{r}
library(styler)

style_file(file.path("Analysis", "styled_example.R"))
```

swapping out "styled_example.R" for your file name.  Styler fixes basic issues like spacing or using either `=` or `<-` where appropriate.

Then, run

```{r}
library(lintr)


```