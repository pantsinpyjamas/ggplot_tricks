ggplot(df, aes(x = var1, y = var1))+
  geom_density_ridges_gradient(scale=3, rel_min_height = 0.01)+
  scale_y_discrete(breaks = seq(1, 52, by = 3))+#major ticks on discrete scale
  scale_x_continuous(breaks = seq(-2, 18, by = 2),#major and minor ticks on continuous scale
                     guide=guide_axis(minor.ticks=T), expand = c(0,0))+
  theme_classic()+
  coord_cartesian(xlim=c(-3,18),#x-axis limits, expands limits beyond the data
                  clip="off")+
  theme(plot.margin=margin(c(1,2,1,1)))+#plot space/margins, can expand the margins of the plot
  annotate("segment",
           x=-3,xend=-3.1,#length of y-axis ticks
           y=seq(2.5,52,3),yend=seq(2.5,52,3),#how often the ticks show up
           colour="black",linewidth=0.5)#tick mark appearance