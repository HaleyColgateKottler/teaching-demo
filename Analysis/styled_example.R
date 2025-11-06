library(ggplot2)
library(dplyr)
library(patchwork)

df <- msleep

all.plots <- list()
for (colname in colnames(df)[colnames(df) %in% c("genus", "vore", "order", "conservation")]) {
  dat.summary <- df %>%
    arrange(colname) %>%
    group_by(.data[[colname]]) %>%
    summarise(
      sleep_total = mean(sleep_total, na.rm = TRUE),
      brainwt = mean(brainwt, na.rm = TRUE)
    )
  all.plots[[length(all.plots) + 1]] <- ggplot(dat.summary) +
    geom_col(aes(x = .data[[colname]], y = sleep_total)) +
    ylab("Avg Total Sleep (hrs)") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.25))
}

wrap_plots(all.plots, ncol = 2, widths = c(2, 1))
ggsave(file.path("Figures", "sleep_plots.png"),
       width = 10, height = 5, units = "in")
