## Warning Message (does not stop execution, just provides a warning)
a <- log(-1)

## Error Message (stops execution)
printmess <- function(x){
    if(x>0)
        print("x is greater than 0")
    else
        print("x is less than or equal to 0")
}

printmess(NA)

## Fix the error message 
printmess <- function(x){
    if(is.na(x))
        print("x is N/A")
    else if (x>0)
        print("x is greater than 0")
    else
        print("x is less than or equal to 0")
}
a <- log(-1)
printmess(a)

#Debugging tools 
## traceback function prints out the function call stack after an error occurs 
## traceback must be called right after the error occurs 

## Example 1
mean(x)

##traceback shows us that the error occurred in the mean function 
traceback()

## Example 2
lm(y ~x)
traceback()

##recover is a error handler function. When recover is used and an error is detected --> 
## R will stop the execution right where the error occurs and print the traceback function call stack
## So you can look at the different function calls and determine why the error occurred

#Below will turn revover on 
options(error = recover)

# Read.csv a nn-existant file 
read.csv("nosuchfile")

## debug function takes a function as argument and flags that function for debugging
## Will allow us to step through execution of the function one line at a time

## Example 
## Let's flag the lm function for debugging 
debug(lm)

## Now when we run the function, we will go into the browser to de bug each line within the function one by one
## We run each line by typing n 
lm(y~x)

#browser can be inserted as line in code and once that line runs --> the execution of the function will suspend 
## Similar to debug

## trace allows you to insert debugging code into a function without actually editing the function itself
## Used when we want to debug functions created by packages (we don't want to change the code of the package)
## can turn the trace function on and off


