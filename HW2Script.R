library(blogbuilder)
exclude_docs()

draft=TRUE

## This data set has data on affairs people of all ages have in their lives.
## I chose to analyze this because I think it would be cool to see the patterns
## of people who are cheating in their marriages in terms of their age,
## occupation, and other factors.

## summary of data

summary(Affairs)

## The variables in this data are number of affairs, age, occupation,
## gender, marriage, years married, religiousness, education, and rating. There
## are some 601 observations.

## The first 4 variables in the columns values are self explanatory, but the
## numbers explaining religiousness, education, occupation, and rating are
## not. Here is what all the variables mean:

##affairs
## How often engaged in extramarital sexual intercourse during the past year?
## 0 = none, 1 = once, 2 = twice, 3 = 3 times, 7 = 4–10 times, 12 = monthly,
## 12 = weekly, 12 = daily.

## age
## numeric variable coding age in years:
## 17.5 = under 20, 22 = 20–24, 27 = 25–29, 32 = 30–34, 37 = 35–39, 42 = 40–44,
## 47 = 45–49, 52 = 50–54, 57 = 55 or over.

## yearsmarried
## numeric variable coding number of years married:
## 0.125 = 3 months or less, 0.417 = 4–6 months, 0.75 = 6 months–1 year,
## 1.5 = 1–2 years, 4 = 3–5 years, 7 = 6–8 years, 10 = 9–11 years,
## 15 = 12 or more years.

##religiousness
## numeric variable coding religiousness:
## 1 = anti, 2 = not at all, 3 = slightly, 4 = somewhat, 5 = very.

## education
## numeric variable coding level of education:
## 9 = grade school, 12 = high school graduate, 14 = some college,
## 16 = college graduate, 17 = some graduate work, 18 = master's degree,
## 20 = Ph.D., M.D., or other advanced degree.

## occupation
## numeric variable coding occupation according to Hollingshead classification
## (reverse numbering).

## rating
## numeric variable coding self rating of marriage:
## 1 = very unhappy, 2 = somewhat unhappy, 3 = average, 4 = happier than average,
## 5 = very happy.


## men vs women, almost half and half.
data.frame(table(Affairs$gender))

## The research question I'd like to answer is:
## Do occupation, education, and religiousness affect how many affairs someone
## has?

## plot of affairs by age
plot(jitter(Affairs$affairs), jitter(Affairs$age), type = "p")




