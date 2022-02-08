# episode 01 of 2/7/2022

# demonstrate using R like a calculator
3 + 5
3 * 5
3 ^ 5

# declare variables/objects
# variables have 'types' text, numbers, etc.

# use this assignment operator
area_hectares <- 1.0

# you can use this, but later on,
# it may trip you up.
x = "My little text variable"

(area_hectares2 <- 1.0) # declare AND print it out  

area_hectares2 # type the name of your
               # variable to print it out

# things run top to bottom -- OR
# in the order you choose.

area_acres <- 2.47 * area_hectares2
area_hectares2 <- 47

area_acres

# challenge
# make 3 new variables
# the 3rd one assigned from the first two.

r_length <- 47
r_width <- 4
r_area <- r_width * r_length


# functions and getting help
a <- 48
(b <- sqrt(a))

round(3.14159)

# args() give you some brief help
args(round)

round(3.14156, digits = 3)

# more help
?round

# vectors
# c() the 'c' is for 'combine' NOT 'concatenate'
hh_members <- c(3, 7, 10, 6)
hh_members

respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")

# inspect vector properties
length(hh_members)
length(respondent_wall_type)
str(hh_members)

# appending to vectors with c()
possessions <- c("bicycle", "radio", "television")
possessions
possessions <- c(possessions, "mobile phone")
possessions

typeof(possessions)
str(possessions)


# subsetting vectors
# calling specific pieces of them

respondent_wall_type
respondent_wall_type[2]
respondent_wall_type[c(3, 2)]

(more_respondent_wall_type <- respondent_wall_type[c(1, 2, 3, 1, 2, 1)])


# deal with missing values
# because you often can't do math
# on 'NA's'
rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)

# select only the values that are NOT NA
rooms[!is.na(rooms)]

# count NA's
sum(is.na(rooms))

# count NOT NA's
sum(!is.na(rooms))    

# final challenge
# how many houses have more than 2 rooms?
rooms_no_na <- rooms[!is.na(rooms)]
rooms_no_na

median(rooms, na.rm = TRUE)
median(rooms_no_na)

rooms_above_2 <- rooms_no_na[rooms_no_na > 2]
length(rooms_above_2)


