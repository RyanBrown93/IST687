#Lab 2: Group 4 - Ryan Brown, Chanita Jones, Nathan Algeria, Pierina Logrono, Tess Florek

#1. Make a copy of the built-in iris data set like this: myIris <- iris 

myIris <- iris

#2. Get an explanation of the contents of the data set with the help function: help("iris") 
help("iris")

help("iris")

#3. Explore myIris via str and the glimpse functions (note: you need to install and library ‘tidyverse’ to use glimpse). Which do you think is better? Why? 
library(tidyverse)

library(tidyverse)
str(myIris)
glimpse(myIris)

#We believe that "str" is better because it show a smaller sample representing the dataset.

#4. Summarize the variables in your copy of the data set 

summary(myIris)

#5. The summary() command provided the mean of each numeric variable. Choose the variable with the highest mean and list its contents to the console. Any variable can be echoed to the console simply by typing its name. Here’s an example that echoes the variable with the lowest mean to the console: myIris$Petal.Width 
 
myIris$Sepal.Length

#6. Now sort that attribute by calling the sort() function and supplying that variable. Remember to choose the variable with the highest mean.

sort(myIris$Sepal.Length)

#7. Now repeat the previous command, but this time use the order() function, again using the variable with the highest mean. 
 
order(myIris$Sepal.Length)

#8. Write a comment in your R code explaining the difference between sort() and order(). Be prepared to explain this difference to the class. 

#Sort provides the data points in order, and order gives the index location in the original column of the sorted numbers.

#9. Now use the order command to reorder the whole data frame, store the new dataframe in a variable called ‘sortedDF’ 

sortedDF <- myIris[order(myIris$Sepal.Length),]
 
#10. Now sort the dataframe using arrange(), which is part of the tidyverse package. This time, sort based the attribute with the lowest mean. Store the new dataframe in a variable called ‘sortedDF1’ 
 
sortedDF1 <- myIris %>% arrange(Petal.Width)

#11. Finally, use View() to examine your reordered data frames and be prepared to report on the first few rows
 
View(sortedDF1)

###Breakout 2 

#12. What does the following line of code do? 

myIris[ , 1] 
#Returns the first column of data.

#13. What is the difference (if any) between myIris [ , "Sepal.Length"] and myIris$Sepal.Length 
 
myIris [ , "Sepal.Length"]
myIris$Sepal.Length 
#There is no difference in the output of the code, however typing "myIris$Sepal.Length" is easier and leaves less room for error.

#14. Write the R code that outputs the ‘Sepal.Length’ attribute values, using the select() command.

myIris %>% select(Sepal.Length)
 
#15. Create a new column (called ‘Ave.Length’) in myIris, which, for each row, is the average of Sepal.Length and Petal.Length. 
 
myIris$Ave.Length <- rowMeans(myIris[ , c(1,3)], na.rm=TRUE)

#16. What does the following line of code do: which.min(myIris$Petal.Length) 

which.min(myIris$Petal.Length)
#Is is returning the Row#, of the unsorted orginal data set, where the minimum value of Petal Length is located.
 
#17. Using the code from the previous step, output the row (iris observation) with the smallest petal length. 

myIris [23,3]
 
#18. Create a new dataframe, with just the Petal.Length and Petal.Width attributes 
 
newDataFrame <- data.frame(myIris$Petal.Length, myIris$Petal.Width)

#19. Create a new dataframe, using the slice() function, with only the first three rows in the myIris dataframe. 
 
newDataFrame1 <- myIris %>% slice(1:3)

#20. Create a new dataframe, which is a subset of myIris, that only includes rows where Petal.Length is less than 1.4, store in shortPetalDF 
 
shortPetalDF <- myIris[myIris$Petal.Length < 1.4,]

#21. How many rows are in the shortPetalDF?
 
str(shortPetalDF)
#There are 11 Rows!
 
#22. The homework asks you to create a conditional statement with if and else. 
#    A conditional statement is part of a larger group of specialized commands 
#    that control the “flow” of a program – what command gets run and when. 
#    You can get help on if, else, and other control words. 
#    Add and run these commands: help("if") help("Control") 
#   Now add and run your first conditional statement:
 
help("if")
help("Control")
    
if (myIris$Petal.Length < 1.4){
      print('Yes')
    } else { 
      print('No')
    }
    