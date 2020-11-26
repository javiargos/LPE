
# LOAD PACKAGES AND DATA --------------------------------------------------

pacman::p_load(tm,SnowBallC,tidyverse,wordcloud)
library(lubridate,warn.conflicts = FALSE)

dataset <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQ73jHbE3MH2hl0ijDi8JlaZ44KQpecp_WuLXpMgedz206as8DKiKm0p0Kri0rbnU5w2YegfkmeF77D/pub?gid=1339989981&single=true&output=csv")
head(dataset) 
dataset

dataset %>% filter(`YEAR EN QUE NACISTE USA 4 DIGITOS POR EJ, 1977 sin  separador de miles` == min(`YEAR EN QUE NACISTE USA 4 DIGITOS POR EJ, 1977 sin  separador de miles`))
dataset %>% filter(`mes que naciste` == month(today()))
dataset %>% filter(`número de expediente` %%2 == 0)
dataset %>% filter(`número de expediente` %%2 != 0)
percent_rank("número de expediente")
