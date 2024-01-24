install.packages("readxl")
install.packages("dplyr")
library(dplyr)

df=readxl::read_excel("C:/download/mba1.xlsx")

#will open a new tab to view the data
View(df)

#will return first 6 rows of a dataset
head(df)

#will return last 6 rows of the
tail(df)

#is used to overview the data shows no of rows and columns
glimpse(df)

#used in dplyr to select specific columns form the dataframe
select(df,datasrno,workex)

filter(df,datasrno==5,workex==208)

#is applied in a single dataframe used to group two rows of a dataframe
#based on one or two variables
group_by(df,workex)

# summary using pipe operator
summary_data=df%>%
  summarize(mean_value=mean(df$workex),total_value=sum(df$gmat))
summary_data

# arrange function
arrange(df,by_group=df$workex)
