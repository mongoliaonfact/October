library(tidyverse)
library(lubridate)

ts_uid_did_bv <- function(csv_file_path){
  read_csv(csv_file_path) %>% 
    select(ts, user_id, device_id, bird_view) %>% 
    mutate(timestamp = as.POSIXct(ts, tz='EST')) %>% 
    mutate(userid = str_replace(user_id, '-.*', '')) %>% 
    mutate(did = str_replace(device_id, '-.*', '')) %>% 
    select(timestamp, userid, did, bird_view)
}

rmove_parenthesis <- function(df){
  df$bird_view <- gsub('[()]', '', df$bird_view)
  df %>% 
    separate(bird_view, c('Point', 'Y', 'X'), sep = ' ')}

df14 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-14.csv')
df14 <- rmove_parenthesis(df14) %>% 
  select(timestamp,did,userid,Y,X)
df14 %>% head()

df15 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-15.csv')
df15 <- rmove_parenthesis(df15) %>% 
  select(timestamp,did,userid,Y,X)
df15 %>% head()

df16 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-16.csv')
df16 <- rmove_parenthesis(df16) %>% 
  select(timestamp,did,userid,Y,X)
df16 %>% head()

df17 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-17.csv')
df17 <- rmove_parenthesis(df17) %>% 
  select(timestamp,did,userid,Y,X)
df17 %>% head()

df18 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-18.csv')
df18 <- rmove_parenthesis(df18) %>% 
  select(timestamp,did,userid,Y,X)
df18 %>% head()

df19 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-19.csv')
df19 <- rmove_parenthesis(df19) %>% 
  select(timestamp,did,userid,Y,X)
df19 %>% head()

df20 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-20.csv')
df20 <- rmove_parenthesis(df20) %>% 
  select(timestamp,did,userid,Y,X)
df20 %>% head()

df21 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-21.csv')
df21 <- rmove_parenthesis(df21) %>% 
  select(timestamp,did,userid,Y,X)
df21 %>% head()

df22 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-22.csv')
df22 <- rmove_parenthesis(df22) %>% 
  select(timestamp,did,userid,Y,X)
df22 %>% head()

df23 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-23.csv')
df23 <- rmove_parenthesis(df23) %>% 
  select(timestamp,did,userid,Y,X)
df23 %>% head()

df24 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-24.csv')
df24 <- rmove_parenthesis(df24) %>% 
  select(timestamp,did,userid,Y,X)
df24 %>% head()

df25 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-25.csv')
df25 <- rmove_parenthesis(df25) %>% 
  select(timestamp,did,userid,Y,X)
df25 %>% head()

df26 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-26.csv')
df26 <- rmove_parenthesis(df26) %>% 
  select(timestamp,did,userid,Y,X)
df26 %>% head()

df27 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-27.csv')
df27 <- rmove_parenthesis(df27) %>% 
  select(timestamp,did,userid,Y,X)
df27 %>% head()

df28 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-28.csv')
df28 <- rmove_parenthesis(df28) %>% 
  select(timestamp,did,userid,Y,X)
df28 %>% head()

df29 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-29.csv')
df29 <- rmove_parenthesis(df29) %>% 
  select(timestamp,did,userid,Y,X)
df29 %>% head()

df30 <- ts_uid_did_bv('../data/appearances 2022-10/appearances_2022-10-30.csv')
df30 <- rmove_parenthesis(df30) %>% 
  select(timestamp,did,userid,Y,X)
df30 %>% head()

timestamp <- seq.POSIXt(as.POSIXct('2022-10-14 00:00:00', tz='EST'), 
                        as.POSIXct('2022-10-31 23:59:59', tz='EST'), by = "1 min")

main_tbl <- as.data.frame(timestamp)
main_tbl %>% head()

#write.csv(df14, '../edited/df14.csv', row.names = FALSE)
#write.csv(df15, '../edited/df15.csv', row.names = FALSE)
#write.csv(df16, '../edited/df16.csv', row.names = FALSE)
#write.csv(df17, '../edited/df17.csv', row.names = FALSE)
#write.csv(df18, '../edited/df18.csv', row.names = FALSE)
#write.csv(df19, '../edited/df19.csv', row.names = FALSE)
#write.csv(df20, '../edited/df20.csv', row.names = FALSE)
#write.csv(df21, '../edited/df21.csv', row.names = FALSE)
#write.csv(df22, '../edited/df22.csv', row.names = FALSE)
#write.csv(df23, '../edited/df23.csv', row.names = FALSE)
#write.csv(df24, '../edited/df24.csv', row.names = FALSE)
#write.csv(df25, '../edited/df25.csv', row.names = FALSE)
#write.csv(df26, '../edited/df26.csv', row.names = FALSE)
#write.csv(df27, '../edited/df27.csv', row.names = FALSE)
#write.csv(df28, '../edited/df28.csv', row.names = FALSE)
#write.csv(df29, '../edited/df29.csv', row.names = FALSE)
#write.csv(df30, '../edited/df30.csv', row.names = FALSE)

