#Week 9, in class code
library(quanteda)
library(quanteda.textplots)
library(quanteda.textstats)
library(tidyverse)

#1. Read in the following data set with read_csv(): https://intro-datascience.s3.us-east-2.amazonaws.com/ClimatePosts.csv Store the data in a data frame called tweetDF. Use glimpse(tweetDF) to summarize the data. Add a comment describing what you see. Make sure to explain what each of the three variables contains. 

 
#2. Use the corpus and tokens commands as shown below. Comment each line of code to explain what they do: 
tweetCorpus <- corpus(textDF$Tweet, docnames=textDF$ID) 
toks <- tokens(tweetCorpus, remove_punct=TRUE) 
toks_nostop <- tokens_select(toks, pattern = stopwords("en"), selection = "remove") 

#3. Next, convert the corpus into a document-feature matrix (DFM), using dfm(), store the result in tweetDFM. 
 

#4. Type tweetDFM at the console to find out the basic characteristic of the DFM (the number of terms, the number of documents, and the sparsity of the matrix). Write a comment describing what you observe. 
  

#5. Create a wordcloud from the DFM using the following command. Write a comment describing notable features of the wordcloud: textplot_wordcloud(tweetDFM, min_count = 1) 
 

#6. Using textstat_frequency() from the quanteda.textstats library, show the 10 most frequent words, and how many times each was used/mentioned


#7. Next, we will read in dictionaries of positive and negative words to see what we can match up to the text in our DFM. Here’s a line of code for reading in the list of positive words: 
URL <- "https://intro-datascience.s3.us-east-2.amazonaws.com/positive-words.txt" 
posWords <- scan(URL, character(0), sep = "\n") 
posWords <- posWords[-1:-34] # There should be 2006 positive words 

#8. Explain what the following lines of code does, and comment each line posDFM <- dfm_match(tweetDFM, posWords) posFreq <- textstat_frequency(posDFM) 
posDFM <- dfm_match(tweetDFM, posWords) 
posFreq <- textstat_frequency(posDFM)

#9. Explore posFreq - using str() or glimpse(). Explain the fields of posFreq 


#10. Output the 10 most frequently occurring positive words (and how often each occurred). 


#11. Do the same set of calculations with the negative words. The negative word file is located at: https://intro-datascience.s3.us-east-2.amazonaws.com/negative-words.txt



