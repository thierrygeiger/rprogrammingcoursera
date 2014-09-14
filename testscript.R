x <- 3
y <- if(x > 3) {
    3
} else {
    2
}

for (i in 1:10) {
  print(i)
}

for (i in 1:10) print(i)

x <- c("a","b","c","d")
for (i in seq_along(x)) print(x[i])
for (asda in x) print(asda)

z <- 5
count <- 0
print("start")
while (z >= 2 && z <=10) {
#   print(str(z))
  coin <- rbinom(1,1,0.5)
  # print(coin)
  if (coin == 1) {
    z <- z + 1
  } else {
    z <- z-1
  }
  count <- count + 1
  print(count)
}
print("finish")
print(z)

# function
f <- function(a, b, c = 2, d = NULL) {
  (c * (a^b)) * d
}  

above <- function(x, n = 10) {
  filter <- x > n
  x[filter]  
}

mydata <- data.frame(rows=1:10,column1=11:20,column2=21:30, column3=31:40, row.names="rows")

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = removeNA)
  } 
  means
}