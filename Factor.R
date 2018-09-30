(grades=sample(c('A','B','C','D'),size='30',replace=T,prob=c(.4,.2,.3,.1)))

gradesf = factor(grades)

summary(grades)

summary(gradesf)

table(grades)

table(gradesf)
class(gradesf)


(gradesFO = factor(grades, ordered=T))


(gradesFO1 = factor(grades, ordered=T,levels=c('B','C','A','D')))
summary(gradesFO1)


(marks=ceiling(rnorm(30,mean=60,sd=5)))
(gender=factor(sample(c('M','F'),size=30,replace=T)))


(student1=data.frame(marks,gender,gradesFO1))
boxplot(marks ~gradesFO1,data =student1 )

boxplot(marks ~gradesFO1+gender,data =student1 )

summary(marks ~gradesFO1+gender,data =student1 )

boxplot(marks)
summary(marks)
abline(h=summary(marks))
