library(pacman)
p_load(tidyverse, stringr)

get_adhd_sums <- function(df){
  df["asrs_sum"] <- rowSums(df %>% 
                               select(all_of(c("attn_1", "attn_2", "attn_3",
                                               "attn_4", "attn_5", "attn_6"))), 
                             na.rm=F)
  return(df)
}
