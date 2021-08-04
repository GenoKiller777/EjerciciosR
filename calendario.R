
install.packages('readxl')
install.packages('calendR')
library(calendeR)
library(readxl)


# Calendario --------------------------------------------------------------


mirelleno <- rep(NA,365)

mirelleno[c(1, 2, 150, 151, 274, 275)] <- "2 Días"
mirelleno[c(91:93, 182:184, 241:243, 332:334)] <- "3 Días"
mirelleno[c(87:90, 178:181, 244:247, 335:338)] <- "4 Días"
mirelleno[c(152:156, 269:273)] <- "5 Días"
mirelleno[c(32:37, 60:65, 115:120, 305:310, 360:365)] <- "6 Días"
mirelleno[c(3:23, 38:51, 66:86, 94:114, 129:149, 157:177,185:240,248:268,276:296,
            311:331, 339:359)] <- "7 Días"
          
mirelleno[c(24:31, 52:59, 121:128, 297:304)] <- "8 Días"

calendR(special.days = mirelleno,
        year = 2022,
        start = 'M',
        special.col = 2:8,
        legend.pos = 'right',
        tittle
        )