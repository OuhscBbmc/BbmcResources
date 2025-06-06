require(ggplot2)
require(grid)

# color1 <- "#B20D35" #Official OU RGB specification #http://en.wikipedia.org/wiki/Crimson
color1 <- "#630D0D" #Recommended for monitors by https://www.ou.edu/content/home/webcomm/webguide/designconsiderations.html
# color2 <- "gray50"
color2 <- "#9A9798" #https://www.ou.edu/content/home/webcomm/webguide/designconsiderations.html
lineSize <- 1
interpolationPoints <- 1001

g <- ggplot(data.frame(x=seq(from=0, to=10, length=5)), aes(x)) +
  geom_vline(xintercept=0, color=color2) +
  geom_hline(yintercept=0, color=color2) +
  stat_function(fun = dchisq, args=list(df=1), colour=color2, linewidth=lineSize, n=interpolationPoints) +
  stat_function(fun = dchisq, args=list(df=2), colour=color2, linewidth=lineSize, n=interpolationPoints) +
  stat_function(fun = dchisq, args=list(df=3), colour=color1, linewidth=lineSize, n=interpolationPoints) +
  stat_function(fun = dchisq, args=list(df=4), colour=color1, linewidth=lineSize, n=interpolationPoints) +
  stat_function(fun = dchisq, args=list(df=5), colour=color2, linewidth=lineSize, n=interpolationPoints) +
  stat_function(fun = dchisq, args=list(df=6), colour=color2, linewidth=lineSize, n=interpolationPoints) +
  stat_function(fun = dchisq, args=list(df=7), colour=color1, linewidth=lineSize, n=interpolationPoints) +
  stat_function(fun = dchisq, args=list(df=8), colour=color1, linewidth=lineSize, n=interpolationPoints) +

  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0), limits=c(0, .6)) +
  labs(x="Biomedical and Behavioral Methodology CORE", y=NULL, main=NULL) +
#   annotate(geom="text", x=1, y=.4, label="BBMC", hjust=0, size=28, color=color2, fontface="bold") +
  annotate(geom="text", x=2.3, y=Inf, label="beta*beta*Mu*italic(C)", parse=TRUE, hjust=0, vjust=1, size=34, color=color1, fontface="bold") +

  theme_bw() +
  theme(panel.grid=element_blank()) +
  theme(panel.border=element_blank()) +
  theme(axis.text=element_blank()) +
  theme(axis.title.x=element_text(colour=color2)) +
  theme(axis.title=element_text(face="italic", vjust=1)) +
  theme(plot.background=element_blank()) +
  theme(panel.background=element_blank()) +
  theme(axis.ticks=element_line(colour=color1)) +
  theme(plot.margin = unit(c(0,0,0,0), "cm"))

ggsave(plot=g, filename="./Diagrams/BbmcLogos/bbmc-distributions-background-clear-short-2.png", width=.5, height=.05, dpi=100, bg=NA, scale=30)
ggsave(plot=g, filename="./Diagrams/BbmcLogos/bbmc-distributions-background-clear-short.png", width=.5, height=.1, dpi=100, bg=NA, scale=20)
ggsave(plot=g, filename="./Diagrams/BbmcLogos/bbmc-distributions-background-clear.png", width=5.5, height=2.2, dpi=1200, bg=NA)
ggsave(plot=g, filename="./Diagrams/BbmcLogos/bbmc-distributions-background-white.png", width=5.5, height=2.2, dpi=1200, bg="white")
# ggsave(filename="./Publications/Logos/BbmcDistributionsBackgroundClear.svg", width=5.5, height=2.2, dpi=400, bg=NA)

# ggsave(filename="./Diagrams/BbmcLogos/BbmcDistributionsBackgroundSquareClear.png", width=2.2, height=2.2, dpi=400, bg=NA)
# ggsave(filename="./Diagrams/BbmcLogos/BbmcDistributionsBackgroundSquareWhite.png", width=2.2, height=2.2, dpi=400, bg="white")

# dev.off()
