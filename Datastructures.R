# Data Structures in R
#Vectors----
x=1:10 #create sequence of numbers from 1 to 10
x
x1 <- 1:20
x1

(x1=1:30) # x1 is now replaced with 1 to 30 assigning and printing in same line

(x2=c(1,2,13,4,5))# c is for concatenation

class(x2)


(x3=letters[1:10])

class (x3)

# propert of a vector is it should be of a single data type
letters[1:26]

(x3b=c('a',"Dhiraj","4"))


class(x3b)

?c
?letters


(x4=c(T,F,FALSE,TRUE)) # vectors with logical values

class(x4)


x5=c(3L,5L) #L  denotes integer
class(x5)

(x5b=c(1,'a',T,4L))

class (x5b)



#access elements

(x6=seq(0,100,by=3))
ls() #variables in my environment

length(x6) # length of vector
x6[20]
x6[3] # access 3rd element


x6[c(2,4)]  # access 2nd and 4th element
# R starts from 1
x6[-1] # access all but 1st element




x6[-c(1:10)] # removes 1 to 10 elements


x6
length(x6)
x6[-lenght(x6)-1]


sort(x6)
rev(x6)

sort(x6,decreasing=T) 

(x7=c(x6,x2))

sort(x6[-c(1,2)])
x6

?seq

(x7=seq(from=0,to=10,by=2))

seq(-3,10,by=0.2)

(x=-3:2)

x[2]=0;x # modify 2nd element

(x=-c(13:2)) # printed from 13 to 2 and concatenated with minus

(x=-3:2)
x
x<0
x[x<0] =5;x # modify elements less than 0



(x=-3:2)
x

x[x<=1 & x>=-1] =100
x







# delete vector

(x=seq(1,5,length.out=15))
x=NULL
x
x[4] # NULL vector


# normal distribution

(x=rnorm(100)) # standard normal distribution mean =0


?rnorm
plot(density(x))

(x1=rnorm(100000,mean=50,sd=5))
plot(density(x1))
mean(x1)
abline(v=mean(x1),h=0.04)
sd(x1)



methods(class='data.frame')# functions applicable for a particular data type

methods(class='numeric')


#Matrix----

1:12


100:111


(m1=matrix(1:12,nrow=4))
(m2=matrix(1:12, ncol=3,byrow=T))



x=101:124

length(x)

matrix(x,ncol=6)

class(m1)
attributes(m1)

dim(m1)
 # access elements of matrix

m1[1,2:3]

m1[c(1,3),]
m1[,1]



paste("C","D",sep="-")
paste("C",1:100,sep="-")


(colnames(m1)=paste('C',1:3,sep=''))





# Vector to Matrix ----

(m3=1:24)

dim(m3)=c(6,4)
m3


m2[1:5] # matrix is like a vector
m2


m2[c(TRUE,F,T,F), c(2,3)]
m2[m2>5 & m2<10]



#modify vector

m2

m2[2,2]
m2[2,2]=10

m2

rbind(m2,c(50,60,70))
m2
cbind (m2,c(55,65,75,85))

m2


t(m2) # transpose
m1
sweep(m1,MARGIN=1,STATS=c(2,3,4,5),FUN="+") #rowwise margin=1 implies row
sweep(m1,MARGIN=2,STATS=c(2,3,4),FUN="*") #colwise  margin=2 implies column



#addmarins
m1
?addmargins


addmargins(m1,margin=1,sum) # clockwise funcion
addmargins(m1,margin=2,sum)  #rowwise function

addmargins(m1,1,sd) # clockwise funcion
addmargins(m1,c(1,2),mean) # row col wise functio


addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd))) # row & col wise function





#Arrays----


#Data frame----
#create vectors to be combined into data frame
(rollno=1:30)
(sname = paste('student',1:30,sep=''))
(gender=sample(c('M','F'),size=30,replace=T,prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))

(course=sample(c('BBA','MBA'),size=30,replace=T,prob=c(.5,.5)))

rollno;sname;gender
marks;marks2;course

#create Dataframe


df1=data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = F)# to avoid strings from becoming a category we use strings as factors
str(df1) #structure of dataframe
head(df1) # top 6 rows
head(df1,n=3) #top 3 rows


tail(df1) #last 6 rows

class(df1) # DF

summary(df1) #summary

df1$gender = factor(df1$gender) # taking gender as a factor ,categorising it


df1$course = factor(df1$course)

str(df1)

summary(df1)


#set.seed(1234)
#(g=sample(c('')))

#lists----

#Factors----
