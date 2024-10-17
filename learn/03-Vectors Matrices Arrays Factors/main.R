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

vec1 = c(1,2,3)
vec2 = c(4,5,6)
vec3 = c(vec1,vec2)

##only difference in list is no automatic type casting