getwd()
treedata <- read.csv("C:/Users/Pavan Kumar/Desktop/Sem2/DV/Graph6-Facebook.csv")
colnames(treedata) <- c("Brands","Fans")
install.packages("treemap")
library(treemap)
treemap(treedata,index = c("Brands"),vSize ="Fans")
aggregate(Fans, ~ Sales , treedata, sum)

treemap(treedata,index = c("Brands"),vSize = "Fans",type="index", 
        fontsize.labels=c(15,12),fontcolor.labels=c("white","orange"),
        fontface.labels=c(2,1),bg.labels=c("transparent"),align.labels=list(
          c("center", "center"), 
          c("right", "bottom")
        ),overlap.labels=0.5,inflate.labels=F) 


treemap(treedata, index=c("Brands"), vSize="Fans", type="index",
        
        border.col=c("black","white"),  
        border.lwds=c(7,2)                        
)

treemap(treedata, index=c("Brands"), vSize="Fans", 
        
        type="index",                            
        palette = "Set1",                        
        title="Fan following in Facebook",                     
        fontsize.title=15,                       
) 
