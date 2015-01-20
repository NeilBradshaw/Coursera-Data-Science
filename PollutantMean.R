PollutantMean <- function(directory,pollutant,ID) {
     
     dat <- data.frame()
     for (i in 1:332) {
         dat <- rbind(dat,read.csv(files_list[i]))
     }      
     dat_subset <- dat[which(dat[, "ID"] == ID),]
     if (pollutant == colnames(dat_subset)[2]) {
         sulfate <- mean(dat_subset[,2], na.rm = TRUE)
         return(sulfate)
     } else {
         nitrate <- mean(dat_subset[,3], na.rm = TRUE)
         return(nitrate) 
     }       
 }
