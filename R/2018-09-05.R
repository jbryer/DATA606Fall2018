# If the vignettes are not showing
install.packages(c('R.rsp', 'devtools'))
devtools::install_github('jbryer/DATA606', force = TRUE, build_vignettes = TRUE)
library(DATA606)
vignette(package = 'DATA606')

# Working Directories
# See this article too: http://data606.net/post/2018-08-28-getting-started-with-r/
getwd() # This is where R will look for files if a full path is not specified

# This will create a directory called "Lab0" at the path defined by getwd()
startLab('Lab0')

# Dual scales
shiny_demo('DualScales', package='DATA606')
