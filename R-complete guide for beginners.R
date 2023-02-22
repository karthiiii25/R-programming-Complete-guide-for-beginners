#datatypes
#creating a vector

names<-c("karthi","karthika","kar","karthick")
names

#finding typeof
typeof(names)

#modifications in vectors
v1<-c(1,2,3,4,5,77)
v2<-c(8,9,10,11,12,13)

length(v1)
str(v1)
mean(v1)
sum(v1,v2)
is.numeric(v1)
is.numeric(names)
is.character(v1)
is.character(names)

#accessing particular elements in vector
v1[2]
v1[6]

#giving range in vectors
v1[3:6]
v2[1:3]


#lists
l1<-list("water",33,"bottle")
l1

#selecting particular elemets using index
l1[3]

#changing or replacing particular element in lists
l1[3]<-"can"
l1
length(l1)

#to check wheather a particular element is present in the list or not
"water" %in% l1
"rose" %in% l1

#adding elements to the list
append(l1,"flask")
v3<-append(l1,"flask")
v3
l1

l2<-list("earth","mars","jupiter","saturn",66,35,99)
l2
append(l2,"neptune")

#adding item to the right of the specified index
append(l2,"mercury",after=4)

#removing item from a list
l3<-l2
l4<-l3[-2]
l4

l3<-l2[-2]
l3

l4<-list("vicks","axeoil","radio","bathtub")
l4

l5<-l4[-3]
l5
length(l5)

#accessing through index number
l2[2:6]

#accessing through loop
for(a in l2){
  print(a)
}


#joining two lists
list1<-list("yesterday", "was", "a" ,"beautiful"," day")
list2<-list("bcz","of","u","k23")
list3<-c(list1,list2)
list3

for( a in list3){
  print(a)
}


#dataframes
df<-data.frame(subjects=c("r","data mining","computer networks","dvtt"),grades=c("S","S","S","S"))
df

df1<-data.frame(hotel_name=c("rayas","ameen","buhari","bilal"),ratings=c(4.5,9,7.0,6.8))
df1

#selecting particular col
df$grades

summary(df)


#adding new rows
var<-rbind(df,c("internship","S"),c("project","s"))
var

#adding new cols
var1<-cbind(df,year_completed=c(2019,2019,2019,2019),verify_status=c("yes","no","yes","yes"))
var1

df2<-data.frame(items=c("tooth brush","pencil","oil","biscuits"),quantity=c(3,4,2,1))
df2

new_var<-rbind(df2,c("spices",4),c("ghee",1))
new_var

new_var1<-cbind(new_var,amount=c(50,34,99,50,70,200))
new_var1

#matrices
mat<-matrix(c(1,2,3,4,5,6),nrow=3,ncol=2)
mat

mat<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
mat

#accessing particular elements in matrix
mat[3,]
#fetching particular row
mat[2,2]
#fetching particular col
mat[,2]

#accessing more than one col,row
mat[c(1,2,3),]

mat[,c(1)]

matrix<-matrix(c(91,92,93,94,95,96),nrow=3,ncol=2)
matrix

#adding rows and cols
new_mat<-rbind(matrix,c(96,97))
new_mat

new_mat1<-cbind(matrix,c(98,99,100))
new_mat1

#finding no of rows and cols
dim(matrix)


#example
mat<-matrix(c("apple","orange","pine","kiwi","cherry","plum"),nrow=3,ncol=2)
mat

mat[2,2]

mat[2,]
mat[,1]

mat[c(1,3),]
mat[,c(1,2)]

new_mat<-rbind(mat,c("blueberry","blackberry"))
new_mat

new_mat1<-cbind(mat,c("blueberry","blackberry","gooseberry"))
new_mat1

dim(new_mat1)

#string operations
str1<-"karthika"
str1
typeof(str1)

#paste
str1<-"bsc"
str2<-"data science"
n<-paste(str1,str2)
n

paste("now the combined sentense after using paste is",n)

#nchar() function
nchar(n)
s<-"virat kholi"
nchar(s)

#changing cases
toupper(n)
tolower(n)
toupper(s)

library(stringr)

#str_length
str_length(n)

#str_sub
str_sub(n,3,16)

str2<-"i still remember everyday"
str_length(str2)
str_sub(str2,5,11)

#str in vectors

#separating by commas
#str_c
vec<-c("forever","yes!")
vec
str_c(vec,collapse = "*")

#str_replace
str<-"lemon"
str_replace(str,"e","o")

#str_pad
str<-"padding value is 20 from right"
str_pad(str,30,'left')

#str_replace
var<-"ATGCATGCATGCTTCCUUU"
str_replace(var,"T","U")
str_replace_all(var,"T","U")

#str_detect
str_detect(var,"CAT")

#str_starts
str_starts(var,"TA")

#str_ends
str_ends(var,"UU")

#str_count
str_count(var,"C")
str_count(var,"U")

#str_split
str<-"this is a string sentense"
str
str_split(str,'')

#sorting(dataframes/vectors)
df<-data.frame(rollno=c(301,488,300,211),sub_opted=c("c","python","data structures","java"))
df

#order
df[order(df$rollno,decreasing=FALSE),]
df[order(df$sub_opted,decreasing = FALSE),]

#sorting in vectors
fruits<-c("orange","plum","cherry","banana","pine")
fruits

str_sort(fruits)
str_sort(fruits,decreasing = TRUE)

#input statements
a<-readline("enter your name:")
a

#conditional statements
#simple if
a<-readline("give a number")
if(99>=10){
  print("this is a more than one  digit number")
}
print("this is next statement cz condition failed")

if(10>100){
  print("satisfied")
}
print("this is next statement")

#if-else
age<-readline("give your age:")
if(age>=18){
  print("youre eligible for voting")
}else{
  print("youre not eligible for voting")
}

num<-as.integer(readline("enter a number:"))
if((num %% 2)== 0){
  print("this is even")
}else{
  print("this is odd")
}

#Write a while loop starting with x = 0. 
#The loop prints all numbers up to 35 but it skips number 7.
x=0
while(x<35)
{
  x=x+1
  if(x==7)next
  print(x)
}


#Use a simple ‘ifelse’ statement to add a new column ‘male.teen’ to the data frame.
#This is a boolean column, indicating T if the observation is a male younger than 20 years.
df<-data.frame( name = c("Sue", "Eva","Henry", "Jan"),
                 sex = c("f", "f", "m", "m"),
                 years = c(21,31,29,19))
df

df$male.teen=ifelse(df$sex=="m"& df$years<20,"T","F")
df

df$female.teen<-ifelse(df$sex=="f"&df$years<20,"T","F")
df

#greatest of 4 nums
num1<-readline("enter a number:")
num2<-readline("enter a number:")
num3<-readline("enter a number:")
num4<-readline("enter a number:")
max<-max(num1,num2,num3,num4)
print(max)

#reading a excel file
library(readxl)
data<-readxl::read_excel("C:/Users/KARTHIKA/OneDrive/Desktop/r prog/mtcars.xlsx")
data

str(data)

#accessing a particular col
data$mpg

#accessing more than one col
data[2:5]
data[5:12]

#reading a csv file
data<-read.csv("C:/Users/KARTHIKA/OneDrive/Desktop/r prog/rprog.csv")
data

ncol(data)
nrow(data)

#data cleaning
#excel file
data1<-readxl::read_excel("C:/Users/KARTHIKA/OneDrive/navaluescleaningr.xlsx")
data1

#na.omit
na.omit(data1)

#na.rm
mean(data1$cyl,na.rm = TRUE)

#is.na
#replacing na by 0
data1[is.na(data1)]<-0
data1

#replacing the null value with mean of that particular col
data1[is.na(data1)]<-mean(data1$cyl,na.rm = TRUE)
data1


#statistical inference
data<-readxl::read_excel("C:/Users/KARTHIKA/OneDrive/Desktop/r prog/mtcars.xlsx")
data

data<-data.frame(data)
data

#max
max(data$mpg)
max(data$qsec)

#min
min(data$mpg)
min(data$qsec)

#mean
mean(data$mpg)
mean(data$qsec)

#median
median(data$mpg)
median(data$qsec)

#Mode
library(modeest)
mfv(data$mpg)
mfv(data$qsec)

#range
range(data$mpg)
range(data$qsec)

#quantile
quantile(data$mpg,c(0.25,0.5,0.75))
quantile(data$qsec,c(0.25,0.5,0.75))

#inter quartile range
IQR(data$mpg)
IQR(data$qsec)

#summary
summary(data)

#sd
sd(data$mpg)
sd(data$qsec)

#variance
var(data$mpg)
var(data$qsec)

#sorting
sort(data$mpg,decreasing=FALSE)
sort(data$mpg,decreasing = TRUE)


sort(data$qsec,decreasing=FALSE)
sort(data$qsec,decreasing=TRUE)


#pie charts
x<-c(50,25,20,5)
lables<-c("cricket","football","soccer","handball")
pie(x,lables,main="fans of sports")


#barplot
names<-c("barani","dhanvi","sowmi")
bmi<-c(30,78,50)
barplot(bmi,names.arg=names,xlab="name",ylab="bmi values",main="bmi values of students",col = "red")

barplot(data$mpg,names.arg = data$car,xlab="names",ylab="mpg values")

#horizontal bar plot
n1<-c(11,43,16,23,36)
n2<-c("a","b","c","d","e")
barplot(n1,names.arg = n2,xlab="names",ylab="values",main="barplot",col="red",horiz = "TRUE" )


#group barplots
mat<-matrix(c(9,8,7,6,5,4),nrow=2,ncol=3)
mat
months<-c("aug","sep","oct")
colors<-c("orange","red","blue")
regions<-c("est","west","north")
barplot(mat,names.arg = months,xlab="months",ylab="mat",col = colors,beside = TRUE)
legend("topleft", regions, cex = 0.13, fill = colors)

#histogram
hist(data$mpg)

val<-c(3,4,5,55,33,44,22,33,44,55,65,43,2,4,8,7,6,5,56,4,7,9,10,13,53,61,72)
hist(val,xlab="values",ylab="frequncy")

#scatter plot
x<-c(2,3,4,5,6)
y<-c(4,6,7,8,9)
plot(x,y)

#from data mtcars
x<-data$wt
y<-data$mpg
plot(x,y,xlab="weight",ylab = "mpg",col="red")

#ggplot2
library(ggplot2)

data()
iris

data<-data.frame(iris)
data

ncol(data)
nrow(data)

#scatter plot
ggplot(data,aes(x=Sepal.Length,y=Petal.Length))+geom_point()

#giving colors
library(viridis)
ggplot(data,aes(x=Sepal.Length,y=Petal.Length))+geom_point(aes(color=Sepal.Length))

#giving scale for colors
ggplot(data,aes(x=Sepal.Length,y=Petal.Length))+geom_point(aes(color=Sepal.Length))+scale_color_viridis(option="A")

#giving themes
ggplot(data,aes(x=Sepal.Length,y=Petal.Length))+geom_point(aes(color=Sepal.Length))+scale_color_viridis(option="B")+theme_dark()


#bar charts in ggplot
ggplot(data,aes(x=Sepal.Length))+geom_bar()

#creating a data frame
df<-data.frame(person=c("shreyas","hardik","rahul","pant","plesis","bumrah"),followers=c(300,299,400,56,78,19))
df

#creating a bar chart
ggplot(df,aes(x=person,y=followers))+geom_bar(stat="identity")

#giving width
ggplot(df,aes(x=person,y=followers))+geom_bar(stat="identity",width=0.9)

#geom_text
ggplot(df,aes(x=person,y=followers))+geom_bar(stat="identity",width=0.8)+geom_text(aes(label=followers,vjust=-0.3,size=3.5))


#ggtitle,xlab,ylab
ggplot(df,aes(x=person,y=followers))+
  geom_bar(stat="identity",width=0.5)+
  ggtitle("no of followers")+
  xlab("person")+ylab("followers")


#correlation
#pearson-parametric
cor(data$Sepal.Length,data$Sepal.Width,method='pearson')

#spearman -non parametric(rank based)
cor(data$Sepal.Length,data$Sepal.Width,method='spearman')

#kendal -non parametric(rank based)
cor(data$Sepal.Length,data$Sepal.Width,method='kendal')

#cor.test
c<-cor.test(data$Sepal.Length,data$Sepal.Width)
c

#linear regression
data<-read.csv("C:/Users/KARTHIKA/OneDrive/Desktop/r prog/income.data.csv")
data

lr<-lm(data$happiness~data$income)
lr

summary(lr)
plot(lr)

#plotting the relation using abline
plot(data$happiness,data$income,col="blue",main="ploting",abline(lm(data$income~data$happiness)))


#example
cal<-c(500,1000,1500,1750,2100)
weight_gain<-c(1,2,5,3.2,3.9)

lr<-lm(weight_gain~cal)
lr
summary(lr)
plot(lr)

plot(weight_gain,cal,main="regression",abline(lm(cal~weight_gain)))

#predict
a<-data.frame(cal=3000)
res<-predict(lr,a)
res

#multiple regression
data<-data.frame(iris)
data

mr<-lm(data$Sepal.Width~data$Sepal.Length+data$Petal.Length+data$Petal.Width)
mr
summary(mr)
plot(mr)

#t-test:
#paired t-test
set.seed(0)
obs1<-c(rnorm(13000,mean=150,sd=10))
obs2<-c(rnorm(13000,mean=144,sd=9))
t.test(obs1,obs2,paired=TRUE)

t.test(data$Sepal.Length,mu=5.843333)
mean(data$Sepal.Length)


#anova
#one-way
a<-aov(Sepal.Length~Species,data=data)
a
summary(a)

#two-way
a1<-aov(Sepal.Length~Species,data=data)
summary(a1)

#chisq.test
data<-readxl::read_excel("C:/Users/KARTHIKA/OneDrive/Desktop/r prog/mtcars.xlsx")
data

table(data$cyl,data$carb)


chisq.test(data$cyl,data$carb,correct=FALSE)


#factorial
fact=1
num=readline("enter a num")
i=1
for (i in 1:num){
  fact=fact*i
}
print(fact)

#greatest of 4 numbers
n1=readline("Enter the number1:")
n2=readline("Enter the number2:")
n3=readline("Enter the number3:")
n4=readline("Enter the number4:")

if(n1>n2){
  if(n1>n3){
    if(n1>n4){
      print( "n1 is greatest.")
    } else{
      print( "n4 is greatest.")
    }
  }
}else if(n2>n3){
  if(n2>n4){
    print("n2 is greatest.")
  }else{
    print("n4 is greatest.")
  }
} else if(n3>n4){
  print("n3 is greatest.")
} else{
  print("n4 is greatest.")
}


if(n1>n2){
  if(n1>3){
    if(n1>n4){
      print("n1, is greatest")
    }else{
      print("n4, is greatest")
    }
  }
}else if(n2>n3){
  if(n2>n4){
    print("n2 is greatest")
  }else{
    print("n4, is greatest")
  }
}else if(n3>n4){
  print("n3, is greatest")
}else{
  print("n4, is greatest")
}

#time series graph
library(lubridate)
deaths <- c(17, 270, 565, 1261, 2126, 2800,
            3285, 4628, 8951, 21283, 47210,
            88480, 138475)
mts<-ts(deaths,start = decimal_date(ymd("2020-01-01")),end =decimal_date(ymd("2021-01-01")),frequency=12)
plot(mts,xlab="monthly data",ylab="deaths")


#cumulative frequency
cf<-cumsum(data$mpg)
cf
plot(cf)

#relative frequency
table(data$mpg)
rf<-table(data$mpg)/length(data$mpg)
rf
plot(rf)
