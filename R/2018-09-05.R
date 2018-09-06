# If the vignettes are not showing
install.packages(c('R.rsp', 'devtools'))
devtools::install_github('jbryer/DATA606', force = TRUE, build_vignettes = TRUE)
library(DATA606)
vignette(package = 'DATA606')
vignette('os3')

# Working Directories
# See this article too: http://data606.net/post/2018-08-28-getting-started-with-r/
getwd() # This is where R will look for files if a full path is not specified

getLabs()

# This will create a directory called "Lab0" at the path defined by getwd()
startLab('Lab1')

# Dual scales
shiny_demo('DualScales', package='DATA606')

test <- c('0','1','1','0')
class(test)
as.integer(test)
as.logical(test)

test2 <- c('T','F','F')
class(test2)
as.integer(test2)
as.logical(test2)

test3 <- c('T','T', 'R', 'F')
as.logical(test3)


library(lego)
data(legosets)

names(legosets)
unique(legosets$Availability)
table(legosets$Availability)
table(legosets$Availability, useNA = 'ifany')
table(legosets$Availability, useNA = 'always')
?table

test5 <- letters
test5
test5[5] <- NA
test5
test5 == 'd'
test5[test5 == 'd']
which(test5 == 'd')
test5[which(test5 == 'd')]
