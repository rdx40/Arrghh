df <- data.frame(
  Name = c("Omar","Ivan","rdx",'John'),
  Age = c(21,23,32,43),
  #as job could be a categorical feature it could be a factorJob = c("Robs drug dealers","existing","lmao a bomb ig","saint")
  Job = factor(c("Programmer","Clerk","Designer","Programmer"))
)

View(df)

df[2] #columns
df[1,] #row

df$Name
df$Age
df$Job

df[["Name"]]
df[c("Name","Job")]

df$Gender <- c('M','M','F','M') ##to add a column

##to add a row
new_row<-data.frame(Name="Angela",Age=41,Job="Home Maker",Gender='F')

df <- rbind(df,new_row)


df$Gender <- NULL
##basically deletes the column

df <- df[-1,]
df
#to delete a row

head(df,n=2)
tail(df,2)

str(df)

colnames(df)

##sorting the df
df[order(df$Age),]
df[order(-df$Age),]
df[order(df$Job),]
df[order(df$Name),]

df
#merging / concat 2 dfs
second_df <- data.frame(
  Name = c("Ivan","rdx","Angela"),
  City = c("New Jersey","Paris","London")
)

merged_df <- merge(df, second_df, by="Name")
merged_df <- merge(df, second_df, by="Name", all=T)
merged_df


#export and import from and into dataframes
getwd()
#setwd('pathyouwant)

write.csv(merged_df,'output.csv', row.names = FALSE)

df_load <- read.csv('output.csv', header=TRUE, sep=',')

##data frames part of r

data(iris)
iris

#eg. how to install packages
#install.packages('gapminder')

library(gapminder)
data("gapminder")
gapminder
