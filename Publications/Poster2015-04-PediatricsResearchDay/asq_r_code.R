require(ggplot2)

mean=0; sd=1
comm_lb = -1.96; comm_ub = -0.77   #22%
gmot_lb = -1.96; gmot_ub = -1.23   #11%
fmot_lb = -1.96; fmot_ub = -0.84   #20%
prob_lb = -1.96; prob_ub = -1.175  #12%
pers_lb = -1.96; pers_ub = -1.13   #13%


x <- seq(-4,4,length=2000)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="", ylab="",
     main="Distribution of ASQ Scores", axes=FALSE)

i <- x >= comm_lb & x <= comm_ub
lines(x, hx)
polygon(c(comm_lb,x[i],comm_ub), c(0,hx[i],0), col="red") 

# area <- pnorm(comm_ub, mean, sd) - pnorm(comm_lb, mean, sd)
# result <- paste("P(",comm_lb,"< IQ <",comm_ub,") =",
#                 signif(area, digits=3))
# mtext(result,3)
axis(1, at=seq(-4, 4, 1), pos=0)

base <- qplot(x, geom="density")
base <- base + stat_function(fun=dnorm,colour="red")
base

rawscores <- c(-0.77, -1.23, -0.84, -1.175, -1.13)
asqcutoff <- -1.96
end = 0.4

values=c("white", "#F5D0A9", "#2ECCFA", "#FFBF00"))

g <- ggplot(data.frame(x=c(-4, 4)),aes(x)) + stat_function(fun=dnorm)
g <- g + labs(x = '', y = '', title = 'ASQ3 At-Risk Percentages')
g <- g + theme(panel.background = element_blank())
#g <- g + theme_bw()

g <- g + annotate("segment", x = asqcutoff, xend = asqcutoff, y = 0, yend = .1, colour = "red")
g <- g + annotate("text", x = asqcutoff, y = .1, label = "ASQ Population at Risk (2.5%)", colour = "red", hjust = 1)

g <- g + annotate("segment", x = gmot_ub, xend = gmot_ub, y = 0, yend = 0.23, colour = "#FF672F")
g <- g + annotate("text", x = gmot_ub, y = 0.23, label = "Gross Motor (11%)", colour = "#FF672F", hjust = 1)

g <- g + annotate("segment", x = prob_ub, xend = prob_ub, y = 0, yend = 0.25, colour = "#E8295E")
g <- g + annotate("text", x = prob_ub, y = 0.25, label = "Problem Solving (12%)", colour = "#E8295E", hjust = 1)

g <- g + annotate("segment", x = pers_ub, xend = pers_ub, y = 0, yend = 0.27, colour = "#CB3AFF")
g <- g + annotate("text", x = pers_ub, y = 0.27, label = "Personal-Social (13%)", colour = "#CB3AFF", hjust = 1)

g <- g + annotate("segment", x = fmot_ub, xend = fmot_ub, y = 0, yend = .31, colour = "#3C2DE8")
g <- g + annotate("text", x = fmot_ub, y = .31, label = "Fine Motor (20%)", colour = "#3C2DE8", hjust = 1)

g <- g + annotate("segment", x = comm_ub, xend = comm_ub, y = 0, yend = .33, colour = "#279EFF")
g <- g + annotate("text", x = comm_ub, y = 0.33, label = "Communication (22%)", colour = "#279EFF", hjust = 1)

g <- g + theme(panel.grid.minor.x = element_blank(), panel.grid.major.x = element_blank())
g <- g + theme(panel.grid.minor.y = element_blank(), panel.grid.major.y = element_blank())
g <- g + theme(axis.text.y=element_blank())
g <- g + theme(axis.ticks.y=element_blank())
g <- g + theme(plot.title = element_text(size = rel(2)))

g


atriskNames <- c("AtRisk", "NotatRisk")
dsbcapiCounts <- c(29, 71)

dsbcapi <- as.data.frame(list(name=atriskNames, percentages=dsbcapiCounts))

g <- ggplot(data=dsbcapi, aes(x=name, y=percentages)) + coord_flip()
g <- g + geom_bar(width=.5, stat="identity", fill="gray80")
g <- g + theme_bw() + scale_x_discrete(drop=F)
g <- g + labs(x = '', y = '', title = 'BCAPI At-Risk Percentages')
g <- g + annotate("text", x = 1, y = 22.5, label = "At Risk 29%", size = 10, colour = "Red", hjust = 1)
g <- g + annotate("text", x = 2, y = 28, label = "Not At Risk 71%", size = 10, colour = "Red", hjust = 1)
g <- g + theme(panel.grid.minor.y = element_blank(), panel.grid.major.y = element_blank())
g <- g + theme(axis.text.y=element_blank())
g <- g + theme(axis.ticks.y=element_blank())
g <- g + theme(plot.title = element_text(size = rel(2)))


g

rm(g)





# g <- g + annotate("segment", x = comm_ub, xend = comm_ub + 4.5, y = .07, yend = 2.07, colour = "blue")
# g <- g + geom_vline(xintercept = asqcutoff, colour = "red")
# g <- g + geom_vline(xintercept = rawscores)