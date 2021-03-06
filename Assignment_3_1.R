#Assignment 3.1 - Session: 3

#Q1 How many vowels are there in the names of USA States?

#Solution 1:
States <- rownames(USArrests)
x <- c('a','e','i','o','u')
x
y <- rep(0,times=5)
y
input <- data.frame(x,y)
input

for(i in 1:50){
  test <- States[i]
  n <- nchar(test)
  test <- strsplit(test,"")
  temp <- test[[1]]
  k <- 1
  while(k <= n){
    if( temp[k] == 'a' || temp[k] == 'A' )
    {input[1,2]=input[1,2]+1}
    if( temp[k] == 'e' || temp[k] == 'E' )
    {input[2,2]=input[2,2]+1}
    if( temp[k] == 'i' || temp[k] == 'I' )
    {input[3,2]=input[3,2]+1}
    if( temp[k] == 'o' || temp[k] == 'O' )
    {input[4,2]=input[4,2]+1}
    if( temp[k] == 'u' || temp[k] == 'U' )
    {input[5,2]=input[5,2]+1}
    k <- k + 1
  }
}

print(input)

#Q2: Visualize the vowels distribution.

#Solution 2:
#Using barplot
barplot(input$y,names.arg = c('A','E','I','O','U'),xlab = "Vowels",ylab="Frequency",col = "blue")

