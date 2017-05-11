library(plyr)
library(reshape2)
library(ggplot2)

df = read.csv("Questionnaire_Data.csv")
df = melt(df, id.vars=1:2, variable.name = "question", value.name = "response")

## visualisation

ggplot(df, aes(response)) + geom_bar(aes(fill=app)) + facet_grid(app~question)
ggsave("questionnaire-responses.pdf")
