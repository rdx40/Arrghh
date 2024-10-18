##combine function
nums <- c(10,20,30,40)
nums

#indexing starts from 1 not 0
nums[1]
#slicing
nums[1:3]
nums[c(1,4)]

nums[c(-1,-4)] #everthing except 1st and 4th index

nums[1]<- 100
nums[1:2]<- c(1,2)

length(nums)

texts<-c("Goodbye","world","this","is","it")

mixed <- c(10, 20, "Hello") ##typecasted by default
mixed <- c(10, 20, 40L)
mixed <- c(10, 20, F)

numbers <- c(1:30) #natural numbers from 1 to 30

numbers <- seq(from=0, to=500, by=50)

rep(c(1,2,3,4,5), each=5)
rep(c(1,2,3,4,5), times=5)

#nth ele n times
rep(c(1,2,3,4,5), times=c(1,6,3,4,5))

##membership operators
50 %in% numbers
55 %in% numbers

numbers<-append(numbers, 60)

vec1 = c(1,54,323)
vec2 = c(421,64,16)
vec3 = c(vec1,vec2)

#sorting
vec3 <- sort(vec3)

##only difference in list is no automatic type casting
##for eg vec

vec <- c(10,20,"Test",30,50,90) #vector type casts all to string/character

lis <- list(10,20,"Test",30,50,90)


##all other vector operations can be implemented in list too
"Test" %in% lis



##matrices 
number_matrix <- matrix(c(1:12), nrow=3, ncol=4, byrow=T)
number_matrix

number_matrix[1,2] ##first row second column
number_matrix[2,2]
number_matrix[2,]
number_matrix[,2]
number_matrix[,]
number_matrix[c(1,3),c(1,3)]

number_matrix <- rbind(number_matrix,c(13,14,15,16)) ##rbind adds new rows
number_matrix <- cbind(number_matrix,c(100,200,200,400)) 
number_matrix


##arrays are like matrices but can be higher dimensional

