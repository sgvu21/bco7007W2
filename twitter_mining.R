library(tidyverse)
library(rtweet)


# do this every week
data<-search_tweets(
  q="cat",
  n=18000,
  include_rts = FALSE,
  lang="en",
  retryonratelimit = TRUE
)

data<-data%>%flatten()

#must change name of file each time it's run
data%>%write_csv("cat_dataset_12_Oct_2021.csv")

# do it when you start completing assessment (i.e once)
# merging and opening all csv files
files<-list.files(pattern="\\.csv$",full.names = TRUE) # select csv files

all_data<-map.df(files, ~read_csv(.x)) # open and merge


#you may have duplicate entries 
final_data<-all_data%>%distinct()



ts_plot(coffee_short, "hours") +
  labs()


