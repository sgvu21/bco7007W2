install.packages("janeaustenr")

library(tidyverse)
library(tidytext)
library(janeaustenr)

data<-austen_books()

data_to_tokens<-data%>%unnest_tokens(word, text)

book_word<-data_to_tokens%>%count(book, word, sort=TRUE)

total_words<-book_word%>%
  group_by(book)%>%
  summarise(total=sum(n))

data_join<-left_join(book_word, total_words)

data_join2<-left_join(total_words, book_word)


