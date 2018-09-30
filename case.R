# Data  analysis using dplry


install.packages(dplyr)

library(dplyr)
?mtcars
dplyr::filter(mtcars,mpg>25 & am==1 & vs==0)
filter(mtcars,mpg >25 & am==1)

mtcars %>% filter(mpg >25 & am==1) %>% arrange(wt) %>% summarise (n())

mtcars %>% filter(mpg >25 & am==1) %>% arrange(wt) %>% count()

count(mtcars)


mtcars %>% group_by(am) %>% summarise (mean(mpg))



mtcars %>% group_by(gear) %>% summarise (mean(wt))


summarise(mtcars,avg=mean(mpg))
?iris
distinct(iris,Species)


?sample_frac

sample_n(mtcars,32)



filter(mtcars)


