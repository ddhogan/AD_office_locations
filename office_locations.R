library(readr)
AD_cleaned <- read_csv("/home/donna/code/work/AD_Office-Sites_unique-col.csv")
View(AD_cleaned)
API_cleaned <- read_csv("/home/donna/code/work/ITA_office_locations_all_deduped.csv")
View(API_cleaned)
outer_joined = merge(AD_cleaned, API_cleaned, by="CITY", all.x=TRUE, all.y = TRUE)
View(outer_joined)
write.csv(outer_joined, file = "outerJoin_officeLocations.csv", na="")
