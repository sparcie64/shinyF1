library(tidyquant)
library(xts)
options("getSymbols.warning4.0"=FALSE)
options("getSymbols.yahoo.warning"=FALSE)

#Mercedes 
getSymbols("DAI", from = '1997-01-01',
           to = "2020-03-01",warnings = FALSE,
           auto.assign = TRUE )

#Renault
getSymbols("RNO.PA", from = '1997-01-01',
           to = "2020-03-01",warnings = FALSE,
           auto.assign = TRUE )

#Ferrari
getSymbols("RACE", from = '1997-01-01',
                     to = "2020-03-01",warnings = FALSE,
                     auto.assign = TRUE )

#AlphaRomeo
getSymbols("RACE", from = '1997-01-01',
           to = "2020-03-01",warnings = FALSE,
           auto.assign = TRUE )
