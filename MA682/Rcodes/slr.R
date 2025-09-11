## Import data
heights <- read.csv(file="heights.csv", header=TRUE)
head(heights)

## Plot the data
plot(dheight~mheight, data=heights,
     xlab="Mother's height (in inches)", ylab="Daughter's height (in inches)",
     pch=20, col=2)

## Fit linear regression to the data
height.lm <- lm(dheight~mheight,data=heights)
summary(height.lm)

## Plot the data with fitted line
plot(dheight~mheight, data=heights,
     xlab="Mother's height (in inches)", ylab="Daughter's height (in inches)",
     pch=19, col=2)
abline(coef(height.lm), lty=1, lwd=5, col=4)
# abline(c(0,1))

## Graphical diagnostic 
plot(height.lm)
