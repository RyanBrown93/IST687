library(tidyverse)

#1. Run those two lines of code. What happens? How do you actually “invoke” the plot (i.e., how do you get it to draw in the plot window)? 
myPlot <- ggplot(economics, aes(x=date)) 
#This line of code sets the X-axis for the data to be plotted
myPlot <- myPlot + geom_line(aes(y=psavert))
#This line of code sets the Y-axis and the data points for the line chart
myPlot
#This line of code invokes the plot.

#2. Run help("economics") to find out the meaning of the psavert variable. 
help("economics")
#psavert represents "personal savings rate"

#3. Examine the plot to estimate when the personal savings rate reached its maximum value. Also examine the plot to estimate when the personal savings rate reached its minimum value. 
#It looks like psavert reached its maximum in 1975 and its minimum in 2005.

#4. Use which.max( ) and which.min( ) to verify your guesses from problem 3. 
economics[which.max(economics$psavert),]
economics[which.min(economics$psavert),]
#These lines of code validate that we were correct in #3

#5. Change the color of the plot line to green. Hint: Changing a line to a constant color happens in the specification of the geometry. 
chart <- economics %>% ggplot(aes(x=date, y=psavert)) + geom_line(color = 'dark green')

#6. Add a title to the plot with the ggtitle("Put title here") sub-command. The title "Personal Savings Rate: 1967-2014" would be a good choice. This is the end of the first breakout session. Please send a chat message to your instructor when you are finished. 
chart + ggtitle("Personal Savings Rate: 1967-2014")

###Second Breakout Session Starts Here 


#7. Add another data series to your plot to show the variable uempmed as a red line. 
chart2 <- economics %>% ggplot(aes(x=date)) + geom_line(aes(y=uempmed),color = 'red') + geom_line(aes(y=psavert), color = 'dark green')
chart2

#8. Change the title of the plot to mention both variables.
chart2 + ggtitle("Personal Savings Rate: 1967-2014 & Unemployment Rate")
chart2

#9. You can modify the axis labels in a ggplot with ylab( ) and xlab( ) subcommands. Change the axis labeling as needed to account for plotting both psavert and uempmed in the same window. 
chart2 + xlab("Date") +ylab("Rates") + ggtitle("Personal Savings Rate: 1967-2014 & Unemployment Rate")

#10. Create one last plot, creating a scatter plot, having the unemploy on the x-axis, psavert on the yaxis. Color each point based on the uempmed. 
chart3 <- economics %>% ggplot(aes(x=unemploy,y=psavert)) + geom_point(aes(y=uempmed),color = 'red') + geom_point(aes(y=psavert), color = 'dark green') 
chart3

#11. Interpret what you see in this last graph 

#12. Make sure your code has nice comments!


