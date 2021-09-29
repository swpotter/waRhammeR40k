library(tidyverse)

## install devtools package if it's not already
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

## install dev version of hexagon from github
devtools::install_github("mkearney/hexagon")

## load rtweet package
library(hexagon)


hex1 <- hexdf()
hex2 <- hexdf(1, mid = c(0.75, 1.5))
hex3 <- hexdf(1, mid = c(1.5, 0))
hex4 <- hexdf(1, mid = c(0.75,-1.5))
hex5 <- hexdf(1, mid = c(2.25,-1.5))
hex6 <- hexdf(1, mid = c(3,0))
hex7 <- hexdf(1, mid = c(2.25,1.5))
hex8 <- hexdf(1, mid = c(3,3))
hex9 <- hexdf(1, mid = c(3.75,1.5))
hex10 <- hexdf(1, mid =c(4.5,0))
hex11 <- hexdf(1, mid =c(3.75,-1.5))
hex12 <- hexdf(1, mid =c(3,-3))
hex13 <- hexdf(1, mid =c(4.5,-3))
hex14 <- hexdf(1, mid =c(5.25,-1.5))
hex15 <- hexdf(1, mid =c(6,0))
hex16 <- hexdf(1, mid =c(5.25,1.5))
hex17 <- hexdf(1, mid=c(4.5,3))
hex18 <- hexdf(1, mid=c(5.25,4.5))
hex19 <- hexdf(1, mid = c(6,3))
hex20 <- hexdf(1, mid = c(6.75,1.5))
hex21 <- hexdf(1, mid =c(7.5,0))
hex22 <- hexdf(1, mid =c(6.75,-1.5))
hex23 <- hexdf(1, mid =c(6,-3))
hex24 <- hexdf(1, mid =c(5.25,-4.5))
hex25 <- hexdf(1, mid =c(6.75,-4.5))
hex26 <- hexdf(1, mid = c(7.5,-3))
hex27 <- hexdf(1, mid =c(7.5,3))
hex28 <- hexdf(1, mid = c(6.75,4.5))



#Map 
ggplot(hex1, aes(x, y)) +
  
#hex1  (0, 0)
  geom_polygon(fill = "ivory1", color = 'black') +
    annotate("text", -0.5, 0, label = "Tile 1",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 0,0, label = "PL 100",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 0.45,0, label = "One unit ObSec",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex2  (0.75, 1.5)
  geom_polygon(data = hex2, fill = "green", color = 'black')+
    annotate("text", 0.25, 1.5, label = "Tile 2",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 0.75,1.5, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 1.20,1.5, label = "+1 Range",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex3  (1.5, 0)
  geom_polygon(data = hex3, fill = "green", color = 'black')+
    annotate("text", 1, 0, label = "Tile 3",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 1.5,0, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 1.95,0, label = "+1 Move",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex4  (0.75, -1.5)
  geom_polygon(data = hex4, fill = "green", color = 'black')+
    annotate("text", 0.25,-1.5, label = "Tile 4",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 0.75,-1.5, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 1.20,-1.5, label = "+1 Leadership",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex5  (2.25, -1.5)
  geom_polygon(data = hex5, fill = "green", color = 'black')+
    annotate("text", 1.75,-1.5, label = "Tile 5",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 2.25,-1.5, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 2.7,-1.5, label = "Turn 1 Drop Pod",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex6  (3, 0)
  geom_polygon(data = hex6, fill = "green", color = 'black')+
    annotate("text", 2.5,0, label = "Tile 6",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 3,0, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 3.45,0,
           colour = "black", size = 4, shape = 13)+
  
#hex7  (2.25, 1.5)
  geom_polygon(data = hex7, fill = "green", color = 'black')+
    annotate("text", 1.75,1.5, label = "Tile 7",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 2.25,1.5, label = "PL X",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 2.7,1.5, colour = "black", size = 4, shape = 11)+
  
#hex8  (3, 3)
  geom_polygon(data = hex8, fill = "purple", color = 'black')+
    annotate("text", 2.5,3, label = "Tile 8",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 3,3, label = "PL X",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 3.45,3, colour = "black", size = 4, shape = 7)+
 
   
#hex9  (3.75, 1.5)
  geom_polygon(data = hex9, fill = "purple", color = 'black')+
    annotate("text", 3.25,1.5, label = "Tile 9",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 3.75,1.5, label = "PL X",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 4.2,1.5,
           colour = "black", size = 4, shape = 6)+
 
#hex10  (4.5, 0)
  geom_polygon(data = hex10, fill = "grey", color = 'black')+
    annotate("text", 4,0, label = "Tile 10",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 4.5,0, label = "PL 75",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 4.85,0, label = "Laplace's Daemon",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex11  (3.75, -1.5)
  geom_polygon(data = hex11, fill = "green", color = 'black')+
    annotate("text", 3.25,-1.5, label = "Tile 11",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 3.75,-1.5, label = "PL X",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 4.2,-1.5, label = "+1 Agenda",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex12  (3, -3)
  geom_polygon(data = hex12, fill = "green", color = 'black')+
    annotate("text", 2.5,-3, label = "Tile 12",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 3,-3, label = "PL X",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 3.45,-3, colour = "black", size = 4,shape = 7)+
  
#hex13  (4.5, -3)
  geom_polygon(data = hex13, fill = "red", color = 'black')+
    annotate("text", 4,-3, label = "Tile 13",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 4.5,-3, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 4.95,-3, label = "Turn 0 Artillary",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex14  (5.25, -1.5)
  geom_polygon(data = hex14, fill = "red", color = 'black')+
    annotate("text", 4.75,-1.5, label = "Tile 14",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 5.25,-1.5, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 5.7,-1.5, colour = "black", size = 4, shape = 11)+
   
#hex15  (6, 0)
  geom_polygon(data = hex15, fill = "red", color = 'black')+
    annotate("text", 5.5,0, label = "Tile 15",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 6,0, label = "PL X",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 6.45,0,
           colour = "black", size = 4, shape = 13)+
  annotate("text", 6.25,0.5, label = "Spooky",
           colour = "black", size = 4.5, fontface = "italic",
           angle='-42')+
  
#hex16  (5.25, 1.5)
  geom_polygon(data = hex16, fill = "purple", color = 'black')+
    annotate("text", 4.75,1.5, label = "Tile 16",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 5.25,1.5, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 5.7,1.5, colour = "black", size = 4, shape = 11)+ 
 
#hex17  (4.5, 3)
  geom_polygon(data = hex17, fill = "purple", color = 'black')+
    annotate("text", 4,3, label = "Tile 17",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 4.5,3, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 4.95,3, label = "Turn 0 Artillary",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex18  (5.25, 4.5)
  geom_polygon(data = hex18, fill = "purple", color = 'black')+
    annotate("text", 4.75,4.5, label = "Tile 18",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 5.25,4.5, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 5.70,4.5, label = "+1 Leadership",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex19  (6, 3)
  geom_polygon(data = hex19, fill = "purple", color = 'black')+
    annotate("text", 5.5,3, label = "Tile 19",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 6,3, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 6.45,3, label = "+1 Move",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex20  (6.75, 1.5)
  geom_polygon(data = hex20, fill = "purple", color = 'black')+
    annotate("text", 6.25,1.5, label = "Tile 20",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 6.75,1.5, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 7.15,1.5, label = "Turn 1 Drop Pod",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex21  (7.5, 0)
  geom_polygon(data = hex21, fill = "red", color = 'black')+
    annotate("text", 7,0, label = "Tile 21",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 7.5,0, label = "PL 25",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 7.95,0,colour = "black", size = 4, shape = 7)+

#hex22  (6.75, -1.5)
  geom_polygon(data = hex22, fill = "red", color = 'black')+
    annotate("text", 6.25,-1.5, label = "Tile 22",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 6.75,-1.5, label = "PL 40",
           colour = "black", size = 5, fontface = "italic")+
  annotate("point", 7.15,-1.5,
           colour = "black", size = 4, shape = 13)+

   
#hex23  (6, -3)
  geom_polygon(data = hex23, fill = "red", color = 'black')+
    annotate("text", 5.5,-3, label = "Tile 23",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 6,-3, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 6.5,-3, label = "+ 1 Move",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex24  (5.25, -4.5)
  geom_polygon(data = hex24, fill = "red", color = 'black')+
  annotate("text", 4.75,-4.5, label = "Tile 24",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 5.25,-4.5, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 5.75,-4.5, label = "+ 1 Range",
           colour = "black", size = 3.5, fontface = "italic")+ 
  
#hex25  (6.75, -4.5)
  geom_polygon(data = hex25, fill = "ivory1", color = 'black')+
    annotate("text", 6.25,-4.5, label = "Tile 25",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 6.75,-4.5, label = "PL 100",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 7.25,-4.5, label = "One unit ObSec",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex26 (7.5,-3)
  geom_polygon(data = hex26, fill = "red", color = 'black')+
    annotate("text", 7,-3, label = "Tile 26",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 7.5,-3, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 7.95,-3, label = "+1 Leadership",
           colour = "black", size = 3.5, fontface = "italic")+
  
#hex27 (7.5, 3)
  geom_polygon(data = hex27, fill = "purple", color = 'black')+
    annotate("text", 7,3, label = "Tile 27",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 7.5,3, label = "PL 50",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 7.95,3, label = "+1 Range",
           colour = "black", size = 3.5, fontface = "italic")+ 
  
#hex28 (6.75, 4.5)
  geom_polygon(data = hex28, fill = "ivory1", color = 'black')+
  annotate("text", 6.25,4.5, label = "Tile 28",
           colour = "black", size = 3.5, fontface = "italic")+
  annotate("text", 6.75,4.5, label = "PL 100",
           colour = "black", size = 5, fontface = "italic")+
  annotate("text", 7.15,4.5, label = "One unit ObSec",
           colour = "black", size = 3.5, fontface = "italic")+
  coord_flip()+
  
#Hide axis  
 theme(panel.background = element_blank(),line = element_blank(),
       text = element_blank(),
       title = element_blank())+

#Legend
#Legend Rectangle
 annotate("rect", xmin = -1.3, xmax = 2, ymin = 3, ymax = 6.2,
           alpha = 0, color = 'black')+
  annotate("text",1.8,4.5, label="Legend",fontface = "bold", size = 5, parse=TRUE) +
  
#Ignore 1st failed out of action test
  annotate(geom = "point",x = 1.4,y = 3.15,size = 4,colour = "black", shape = 7)+
  annotate("text", x = 1.4, y = 4.7, label = 'Ingnore 1st failed out of action test', size = 3.5)+
  
#Reroll 1 attack/ wound roll per round
  annotate(geom = "point",x = 1,y = 3.15,size = 4,colour = "black", shape = 11)+
  annotate("text", x = 1, y = 4.7, label = 'Reroll 1 attack/wound roll per round', size = 3.5)+

#Grant 1 unit fly keyword
annotate(geom = "point",x = 0.6,y = 3.15,size = 4,colour = "black", shape = 13)+
  annotate("text", x = 0.6, y = 4.7, label = 'Grant 1 unit the fly keyword', size = 3.5)+

#Battle trait/weapon upgrade
annotate(geom = "point",x = 0.2,y = 3.15,size = 4,colour = "black", shape = 6)+
  annotate("text", x = 0.2, y = 4.7, label = 'You pick battle trait/weapon upgrade on lvl up', size = 3.5)+

#Tau Color 
annotate(geom = "point",x = -0.2,y = 3.15,size = 4,colour = "purple", shape = 15)+
  annotate("text", x = -0.2, y = 4.7, label = 'Tau Territory', size = 3.5)+

#Blood Angels Color 
annotate(geom = "point",x = -0.6,y = 3.15,size = 4,colour = "red", shape = 15)+
  annotate("text", x = -0.6, y = 4.7, label = 'Blood Angels Territory', size = 3.5)+
  
#Necrons Color 
annotate(geom = "point",x = -1.0,y = 3.15,size = 4,colour = "green", shape = 15)+
  annotate("text", x = -1.0, y = 4.7, label = 'Necrons Territory', size = 3.5)+

###
#Attacking arrow directions
###

geom_segment(aes(x = 3.75, y = 1.2, xend = 2.25, yend = 1.2),
               arrow = arrow(length = unit(0.5, "cm")), size = 3)+

geom_segment(aes(x = 7, y = -0.9, xend = 5.8, yend = -0.3),
               arrow = arrow(length = unit(0.5, "cm")), size = 3)+
  
geom_segment(aes(x = 3, y = -0.3, xend = 3.7, yend = -0.9),
               arrow = arrow(length = unit(0.5, "cm")), size = 3)+

#Bottom Left Turn # Text

annotate("text", x = -1.0, y = -4.7, label = 'Turn 2', size = 9.5)







