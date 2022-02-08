# Intro to R
# Feb 7-9-11

# call needed packages
library(tidyverse)
library(here)

# read_csv    --tidy method. creates a tibble
# read.csv    --base r method. created a data frame

# use the here library
interviews <- read_csv(
  here("data", "SAFI_clean.csv"),
  na = "NULL")

# use a relative path:
interviews2 <- read_csv(
  "data/SAFI_clean.csv",
  na = "NULL"
)

# inspecting our tibble 
view(interviews)
head(interviews)
tail(interviews)

str(interviews)
class(interviews)

dim(interviews)
nrow(interviews)
ncol(interviews)

# just the column names.
names(interviews)

# just individual pieces
interviews[1,3]
interviews[1, 4:7]

# first 3 rows of the 7th column
interviews[1:3, 7]

interviews[3,]

# you can go backwards
interviews[35:25, ]

# all the rows
interviews[, -1]


# the final and middle and bottom challenge

# get just the 100th row
interviews_100 <- interviews[100, ]
nrow(interviews)
tail(interviews)

interviews_last <- interviews[nrow(interviews),]

# just get the middle row
n_rows <- nrow(interviews)
interviews_middle <- interviews[median(1:n_rows),]
interviews_middle



# factors and a quick graph
respondent_floor_type <- factor(c("earth", "cement", "cement", "earth"))
respondent_floor_type

levels(respondent_floor_type)
nlevels(respondent_floor_type)

respondent_floor_type_ordered <- factor(respondent_floor_type, ordered = TRUE)
respondent_floor_type_ordered
levels(respondent_floor_type_ordered)

# you can go back and forth from
# factor to character or numeric vectors.
# but BE CAREFUL!
year_fct <- factor(c(1990, 1983, 1977, 1988, 1990, 1988, 1988, 1990))
str(year_fct)
as.numeric(year_fct)

# why user factors?
# because it makes bar charts easy

# make our first graph
memb_assoc <- interviews$memb_assoc
str(memb_assoc)
memb_assoc <- as.factor(memb_assoc)
memb_assoc

# plot is base R
# but it's missing NA's.
plot(memb_assoc)

# replace those NA's.
memb_assoc[is.na(memb_assoc)] <- "undetermined"
memb_assoc

memb_assoc <- as.factor(memb_assoc)
plot(memb_assoc)

