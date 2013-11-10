
# ---- prepare_workspace -------------------------------------------------------

Sys.setenv(TZ='UTC')
x <- list("adehabitatHR", 
          "plyr", 
          "lubridate", 
          "scales", 
          "reshape2",  
          "ggplot2",
          "RColorBrewer",
          "rgdal",
          "gridExtra",
          "rgeos")
lapply(x, require, character.only = T)
 
source("BRBMethod.R")


# ---- load_data ---------------------------------------------------------------

all <- read.csv("RangingWaypoints.csv")
hr_pts <- subset(all, use_for_hr == TRUE)
da <- as.POSIXct(as.character(hr_pts$timestamp))
hr_pts$group <- factor(hr_pts$group)
ran <- as.ltraj(xy = hr_pts[, c("x","y")], 
                date = da, 
                id = hr_pts$group, 
                infolocs = hr_pts[, c(3,6:12)])

plot(ran, final = FALSE, addpoints = FALSE)


# ---- cleanup_1 ---------------------------------------------------------------
rm(all)
gc()


# ---- review_data -------------------------------------------------------------

# Warning: next line is very slow!
# It may totally cripple your computer for an hour or more!

# temp <- cutltraj(ran, "dt > 5400")
# plot(temp, addpoints=FALSE, final=FALSE)
# 
# temp_df <- ld(temp)
# temp_df$velocity <- (temp_df$dist / 1000) / (temp_df$dt / 3600)

# If all okay then clean up workspce
# rm(temp)
# rm(temp_df)
# gc()

# Convert to data frame
ran_df <- ld(ran)
ran_df$date_of <- as.Date(ran_df$date)

date_begin <- min(ran_df$date_of)
date_end <- max(ran_df$date_of)

# Plot contributions
temp <- ddply(ran_df, .(id, observer, date_of), summarize, n_pts = length(x))
temp[temp$n_pts == 28, ]$n_pts <- 26
temp[temp$n_pts == 27, ]$n_pts <- 26

ggplot(temp, aes(x = date_of, 
                       y = (n_pts / 26), color = observer)) +
  geom_hline(aes(yintercept = 0), color = "black") +
  geom_hline(aes(yintercept = 1), color = "gray70", lty = 3) +
  geom_segment(aes(xend = date_of, yend = 0)) + 
  theme_bw() +
  scale_x_date(breaks = date_breaks("1 years"), 
               labels = date_format("%Y"),
               limits = c(as.Date(date_begin), 
                          as.Date(date_end))) +
  scale_y_continuous(limits = c(0, 1), breaks = 1, labels = "13h") +
  theme(panel.border = element_blank(),
        panel.grid.major.y = element_blank(), 
        panel.grid.minor.y = element_blank(),
        axis.text.y = element_text(size = 7),
        legend.position = "bottom") +
  scale_color_brewer(name = "Observer", palette = "Set3") +
  labs(x = "Date", y = "") +
  ggtitle("Observation Periods") +
  facet_grid(id ~ ., drop = TRUE)


# ---- plot_contributions2 -----------------------------------------------------

ggplot(ran_df, aes(x = id, fill = observer)) + 
  geom_bar() + 
  scale_fill_brewer(name = "Observer", palette = "Set3") + 
  theme_bw() + 
  theme(legend.position = "bottom") + 
  labs(x = "Group", y = "Number of Points") + 
  coord_flip()

give.n <- function(x){
  return(c(y = 500, label = length(x)))
}

ggplot(ran_df, aes(x = observer, fill = observer)) + 
  geom_bar() + 
  scale_fill_brewer(name = "Observer", palette = "Set3") + 
  theme_bw() + 
  theme(legend.position = "bottom") + 
  stat_summary(aes(y = 500), fun.data = give.n, geom = "text", color = "black", size = 4) + 
  labs(x = "Group", y = "Number of Points")

# ---- calculate_intervals -----------------------------------------------------

date_begin <- floor_date(min(da), unit = "year")
date_end <- ceiling_date(max(da), unit = "year") - days(1)

# monthly
start_vec <- seq(date_begin, date_end, "1 months")
end_vec <- start_vec[-1] - days(1)
end_vec <- c(end_vec, date_end)

mon_ints <- data.frame(block_type = "month", 
                       date_begin = start_vec, 
                       date_end = end_vec)

# eighth
start_vec1 <- seq(date_begin, date_end, "3 months")
start_vec2 <- seq((date_begin + months(1) + days(15)), 
                  date_end, "3 months")
start_vec <- sort(c(start_vec1, start_vec2))

end_vec1 <- start_vec1[-1] - days(1)
end_vec2 <- start_vec2 - days(1)
end_vec <- sort(c(end_vec1, end_vec2, date_end))

eig_ints <- data.frame(block_type = "eighth", 
                       date_begin = start_vec, 
                       date_end = end_vec)

# quarter
start_vec <- seq(date_begin - months(2) + days(15), 
                 date_end, "3 months")
end_vec <- start_vec[-1] - days(1)
end_vec <- c(end_vec, date_end)

qua_ints <- data.frame(block_type = "quarter", 
                       date_begin = start_vec, 
                       date_end = end_vec)

# half
start_vec <- seq(date_begin - months(2) + days(15), 
                 date_end, "6 months")
end_vec <- start_vec[-c(1)] - days(1)
start_vec <- start_vec[-length(start_vec)]

hal_ints <- data.frame(block_type = "half", 
                       date_begin = start_vec, 
                       date_end = end_vec)

# year
start_vec <- seq(date_begin, date_end + days(1), "1 year")
end_vec <- end_vec <- start_vec[-c(1)] - days(1)
start_vec <- start_vec[-length(start_vec)]

yea_ints <- data.frame(block_type = "year", 
                       date_begin = start_vec, 
                       date_end = end_vec)

# Combine all scales
ob_ints <- rbind(mon_ints, eig_ints, qua_ints, hal_ints, yea_ints)
ob_all <- NULL

# Create scale entry for each group
for(i in 1:length(levels(ran_df$id)))
{
  temp <- cbind(ob_ints, rep(levels(ran_df$id)[i], times = nrow(ob_ints)))
  names(temp)[4] <- "id"
  ob_all <- rbind(ob_all, temp)  
}


# ---- cleanup_2 ---------------------------------------------------------------
rm(date_begin)
rm(date_end)
rm(start_vec1)
rm(start_vec2)
rm(end_vec1)
rm(end_vec2)
rm(start_vec)
rm(end_vec)
rm(eig_ints)
rm(qua_ints)
rm(hal_ints)
rm(yea_ints)
rm(ob_ints)
rm(temp)
gc()


# ---- calculate_num_locs ------------------------------------------------------

ob_all$nb_reloc <- 0

# rearrange
ob_all <- ob_all[, c(1, 4, 5, 2, 3)]

# Warning: slow!!
for(i in 1:nrow(ob_all)){
  ob_all[i, ]$nb_reloc <- 
    nrow(subset(ran_df,
                id == ob_all[i, ]$id & 
                  date_of >= as.Date(ob_all[i, ]$date_begin) & 
                  date_of <= as.Date(ob_all[i, ]$date_end)))
}

# ---- apply_num_locs_threshold ------------------------------------------------

base <- 48
ob <- subset(ob_all,
               (block_type == "month" & nb_reloc >= base * 2) |
               #(block_type == "eighth" & nb_reloc >= base * 2) |
               (block_type == "quarter" & nb_reloc >= base * 4) | 
               (block_type == "half" & nb_reloc >= base * 8) |
               (block_type == "year" & nb_reloc >= base * 16))

rownames(ob) <- 1:nrow(ob)
ob$ints <- new_interval(ob$date_begin, ob$date_end)
ob <- subset(ob, select = -c(date_begin, date_end))


# ---- cleanup_3 ---------------------------------------------------------------
rm(base)
gc()


# ---- plot_times --------------------------------------------------------------

date_begin <- min(int_start(ob$ints))
date_end <- max(int_end(ob$ints))

temp <- ddply(ran_df, .(id, date_of), summarize, n_pts = length(x))
temp[temp$n_pts == 28, ]$n_pts <- 26
temp[temp$n_pts == 27, ]$n_pts <- 26

p1 <- ggplot(temp, aes(x = date_of, 
                       y = (n_pts / 26), color = id)) +
  geom_hline(aes(yintercept = 0), color = "black") +
  geom_hline(aes(yintercept = 1), color = "gray70", lty = 3) +
  geom_segment(aes(xend = date_of, yend = 0), alpha = 0.5) + 
  theme_bw() +
  scale_x_date(breaks = date_breaks("1 years"), 
               labels = date_format("%Y"),
               limits = c(as.Date(date_begin), 
                          as.Date(date_end))) +
  scale_y_continuous(limits = c(0, 1), breaks = 1, labels = "13h") +
  theme(panel.border = element_blank(),
        panel.grid.major.y = element_blank(), 
        panel.grid.minor.y = element_blank(),
        axis.text.y = element_text(size = 7),
        legend.position = "bottom") +
  scale_color_discrete(name = "Group", guide = "none") +
  labs(x = "Date", y = "") +
  ggtitle("Observation Periods") +
  facet_grid(id ~ ., drop = TRUE)


## Time Periods
p2 <- ggplot(ob, aes(x = int_start(ints) + days(3),
                     y = factor(id, levels = rev(levels(id))),
                     color = id)) +
  geom_segment(aes(xend = int_end(ints) - days(3), 
                   yend = id), 
               size = 2) + 
  theme_bw() + 
  scale_color_discrete(guide = "none") +
  theme(panel.border = element_rect(fill = NA, colour = "grey50"),
        axis.text.y = element_text(size = 8)) +
  scale_x_datetime(breaks = date_breaks("1 years"), 
                   labels = date_format("%Y"),
                   limits = c(date_begin, date_end)) +
  facet_grid(block_type ~ .) + 
  labs(x = "Date", y = "") +
  ggtitle("Included HR intervals")

grid.arrange(p1, p2)


# ---- calculate_group_size ----------------------------------------------------

# Pull current census data from PACE database
# library(RODBC)
# ch <- odbcConnect(dsn = "PACE")
# group.q <- "SELECT
#     tblGroup.NameShort, 
#     qryCensusMonthly.DateOf, 
#     codesCensusMonthlyStatus.Status, 
#     codesSex.Sex, 
#     codesAgeClass.AgeClass, 
#     Sum(1) AS N 
#   FROM ((((qryCensusMonthly 
#     INNER JOIN codesCensusMonthlyStatus ON 
#       qryCensusMonthly.StatusID = codesCensusMonthlyStatus.ID)
#     INNER JOIN tblGroup ON 
#       qryCensusMonthly.GroupID = tblGroup.ID) 
#     INNER JOIN codesSex ON
#       qryCensusMonthly.Sex = codesSex.ID)
#     INNER JOIN codesAgeClass ON
#       qryCensusMonthly.AgeClassID = codesAgeClass.ID)
#   GROUP BY 
#     tblGroup.NameShort, 
#     qryCensusMonthly.DateOf, 
#     codesCensusMonthlyStatus.Status, 
#     codesSex.Sex, 
#     codesAgeClass.AgeClass"
# groups <- sqlQuery(ch, group.q)
# odbcCloseAll()
# detach("package:RODBC", unload=TRUE)
# 
# names(groups) <- c("id", "date_of", "status", "sex", "age", "n")
# write.csv(groups, "groups_query.csv", row.names = FALSE)

# Or use data pulled 2013-09-23
groups <- read.csv("groups_query.csv")

# Include only alive or immigrated animals
tcomp <- subset(groups, status == "Alive" | status == "Immigrated")

# Include only sexually mature animals
comp <- subset(tcomp, age == "Adult" | age == "SubAdult")

# Inlcude only study group
comp <- subset(comp, id %in% c("AD", "BH", "CP", "EX", "GN", "LV", "RM"))

comp$id <- factor(comp$id)
comp$status <- factor(comp$status)
comp$sex <- factor(comp$sex)
comp$age <- factor(comp$age)
comp$date_of <- as.Date(comp$date_of)

# Round to set census date
comp$census_date <- round_date(comp$date_of, unit = "month")

# Convert to age/sex
comp$age_sex <- paste(comp$age, "_", comp$sex, sep = "")

# Drop unnecessary columns
comp <- comp[, c(1, 2, 7, 8, 6)]

# Reshape
comp_wide <- dcast(comp, id + date_of ~ age_sex, 
                   value.var = "n", 
                   fun.aggregate = sum, 
                   drop = TRUE, 
                   fill = 0)

# Empty data frame for final composition data
final_comps <- NULL

# Define limits, pull group comp data for each group, and interpolate values
for (i in 1:length(levels(comp_wide$id)))
{
  # Make temporary subsets
  temp_ob <- subset(ob, id == levels(comp_wide$id)[i])
  temp_comp <- subset(comp_wide, id == levels(comp_wide$id)[i])
  
  # Find date limits
  date_begin <- floor_date(min(int_start(temp_ob$ints)), unit = "month")
  date_end <- ceiling_date(max(int_end(temp_ob$ints)), unit = "month")  
  
  # Generate even sequence of first-of-month dates
  date_seq <- as.Date(seq(date_begin, date_end, "days"))
  
  # Create daily data frame for composition values
  comp_frame <- data.frame(id = levels(comp_wide$id)[i],
                           census_date = date_seq,
                           Adult_F = NA,
                           Adult_M = NA,
                           SubAdult_F = NA,
                           SubAdult_M = NA)
  
  # Fill in census dates with actual information
  comp_frame$Adult_F <- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$Adult_F
  comp_frame$Adult_M <- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$Adult_M
  comp_frame$SubAdult_F <- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$SubAdult_F
  comp_frame$SubAdult_M <- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$SubAdult_M
  
  # Interpolate between census dates for each day
  comp_frame$s_Adult_F <- approx(x = comp_frame$census_date,
                                 y = comp_frame$Adult_F,
                                 n = nrow(comp_frame),
                                 method = "constant")$y
  
  comp_frame$s_Adult_M <- approx(x = comp_frame$census_date,
                                 y = comp_frame$Adult_M,
                                 n = nrow(comp_frame),
                                 method = "constant")$y
  
  comp_frame$s_SubAdult_F <- approx(x = comp_frame$census_date,
                                 y = comp_frame$SubAdult_F,
                                 n = nrow(comp_frame),
                                 method = "constant")$y
  
  comp_frame$s_SubAdult_M <- approx(x = comp_frame$census_date,
                                 y = comp_frame$SubAdult_M,
                                 n = nrow(comp_frame),
                                 method = "constant")$y
  
  comp_frame <- comp_frame[, c(1, 2, 7:10)]
  
  final_comps <- rbind(final_comps, comp_frame)
}

# Fix names
names(final_comps) <- c("id", "date_of", "n_af", "n_am", "n_saf", "n_sam")
final_comps$date_of <- as.POSIXct(final_comps$date_of)

# Calculate mean adult mass values for each HR interval
ob$adult_mass <- 0
for(i in 1:nrow(ob)){
  g1 <- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints & 
                                 final_comps$id==ob[i, ]$id), ]$n_af)
  g2 <- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints & 
                                 final_comps$id==ob[i, ]$id), ]$n_am)
  g3 <- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints & 
                                 final_comps$id==ob[i, ]$id), ]$n_sam)
  g4 <- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints & 
                                 final_comps$id==ob[i, ]$id), ]$n_saf)
  
  ob[i, ]$adult_mass <- ((g1 + g3 + g4) * 2.54) + (g2 *3.68)
}

# Plot mass over time for each group
final_comps$adult_mass <- ((final_comps$n_af + 
                              final_comps$n_saf + 
                              final_comps$n_sam) * 2.54) + 
  (final_comps$n_am *3.68)

ggplot(final_comps, aes(x = date_of, y = adult_mass, color = id)) + 
  geom_line(size = 1) + 
  scale_color_brewer(name = "Observer", palette = "Set1") +
  labs(x = "Date", y = "Adult mass (kg)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  facet_grid(. ~ id)


# ---- cleanup_4 ---------------------------------------------------------------
# Clean up
rm(g1)
rm(g2)
rm(g3)
rm(g4)
rm(comp_frame)
gc()

rm(date_seq)
rm(date_begin)
rm(date_end)
rm(temp_ob)
rm(temp_comp)
rm(comp)
rm(comp_wide)
gc()

rm(group.q)
rm(ch)
rm(groups)
rm(tcomp)
# rm(final_comps)
gc()


# ---- calculate_fruit ---------------------------------------------------------

# Load data
biomass <- read.csv("../Transects/biomass_monthly.csv")

# Add one additional january to the end for a complete year
biomass <- rbind(biomass, biomass[1, ])

# Create actual dates
biomass$month_num <- match(biomass$month_of, month.abb)
biomass$date_of <- ymd(paste("2011", biomass$month_num, "1", sep = "-"))
biomass$day_of_year <- yday(biomass$date_of)

# Change last day_of_year to 366 and rearrange
biomass[13, ]$day_of_year <- 366
biomass <- biomass[, c(1, 4, 5, 2)]

# Spline
biomass_daily <- data.frame(day_of_year = seq(1:366))
biomass_daily$spline <- spline(x = biomass$day_of_year, 
                               y = biomass$combined_monthly_kg, n = 366)$y

# Spline plot
plot(spline(x = biomass$day_of_year, 
            y = biomass$combined_monthly_kg, n = 366))
points(x = biomass$day_of_year, 
       y = biomass$combined_monthly_kg, col = "red", pch = 16)

# Extend over complete range of study dates
start_date <- as.Date(min(int_start(ob$ints)))
end_date <- as.Date(max(int_end(ob$ints)))
biomass_dates <- data.frame(date_of = seq(start_date, end_date, by = 1))
biomass_dates$day_of_year <- yday(biomass_dates$date_of)
biomass_dates <- merge(biomass_dates, biomass_daily, 
                       by.x = "day_of_year", 
                       by.y = "day_of_year")[, c(2,1,3)]
biomass_dates <- biomass_dates[with(biomass_dates, order(date_of)), ]

biomass_daily$date_of <- as.POSIXct(as.Date(biomass_daily$day_of_year - 1, origin = "2011-01-01"))
biomass[13, ]$date_of <- biomass[13, ]$date_of + years(1)


# Plot complete set
ggplot() + 
  geom_area(data = biomass_dates, 
            aes(x = as.Date(date_of), y = spline), 
            alpha = 0.5) + 
  geom_point(data = subset(biomass_dates, day(date_of) == 1),
             aes(x = as.Date(date_of), y = spline),
             color = "red") +
  scale_x_date(breaks="3 months", labels = date_format("%b-%y")) + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(x = "Date", y = "Available fruit biomass (kg / ha)")

biomass_dates$date_of <- ymd(as.character(biomass_dates$date_of))

# Calculate mean fruit biomass values for each HR interval
ob$mean_fruit <- 0
for(i in 1:nrow(ob)){
  ob[i, ]$mean_fruit <- mean(biomass_dates[which(biomass_dates$date_of %within% 
                                                   ob$ints[i]), ]$spline)
}


# ---- cleanup_5 ---------------------------------------------------------------
rm(biomass)
rm(biomass_daily)
rm(start_date)
rm(end_date)
# rm(biomass_dates)
gc()


# ---- calculate_weather -------------------------------------------------------
wea <- read.csv("../Weather/filledfiltered_weather.csv")
wea$date_of <- ymd(as.character(wea$date_of))

ob$mean_tmax <- 0
ob$mean_tmin <- 0
ob$mean_rainfall <- 0

# get mean max temperature for each HR interval
for(i in 1:nrow(ob)){
  ob[i, ]$mean_tmax <- mean(wea[which(wea$date_of %within% 
                                       ob$ints[i]), ]$tmax, na.rm = TRUE)
  ob[i, ]$mean_tmin <- mean(wea[which(wea$date_of %within% 
                                       ob$ints[i]), ]$tmin, na.rm = TRUE)
  ob[i, ]$mean_rainfall <- mean(wea[which(wea$date_of %within% 
                                           ob$ints[i]), ]$rain, na.rm = TRUE)
}


# ---- cleanup_6 ---------------------------------------------------------------
rm(wea)
gc()


# ---- load_habitat_maps -------------------------------------------------------

lc <- readGDAL(fname = "C:/Users/Fernando/Dropbox/AnalysisPhD/Spatial/raster/LandCover/LS_2011_LC.tif")
fullgrid(lc) <- FALSE
names(lc) <- "habitat"

ndvi <- readGDAL(fname = "C:/Users/Fernando/Dropbox/AnalysisPhD/Spatial/raster/LandCover/LS_2011_NDVI.tif")
fullgrid(ndvi) <- FALSE
names(ndvi) <- "ndvi"

bounds <- ddply(ran_df, 
                "id", 
                function(df) c(min(df$x) - 100, 
                               max(df$x) + 100, 
                               min(df$y) - 100, 
                               max(df$y) + 100))
names(bounds) <- c("id","xmin","xmax","ymin","ymax")

xym <- as.matrix(rbind(
  c(min(bounds$xmin), max(bounds$ymax)),
  c(max(bounds$xmax), max(bounds$ymax)),
  c(max(bounds$xmax), min(bounds$ymin)),
  c(min(bounds$xmin), min(bounds$ymin)),
  c(min(bounds$xmin), max(bounds$ymax))))

p <- Polygon(xym)
ps <- Polygons(list(p),1)
clip_rect <- SpatialPolygons(list(ps))
proj4string(clip_rect) <- CRS("+proj=utm +zone=16 +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0")

hab <- lc[clip_rect, drop = TRUE]
age <- ndvi[clip_rect, drop = TRUE]

image(hab, col = brewer.pal(4, "YlGn"))


# ---- calculate_hr ------------------------------------------------------------

ob$area_core <- 0
ob$area_primary <- 0
ob$area_total <- 0
ob$ndvi_core <- 0
ob$ndvi_primary <- 0
ob$ndvi_total <- 0
ob$ndvi_high <- 0
ob$ndvi_medium <- 0
ob$ndvi_low <- 0

ud <- list()
vv <- list()

# Calculate diffusion values
for(i in 1:length(levels(ran_df$id)))
{
  vv_id <- levels(ran_df$id)[i]
  vv[[i]] <- BRB.D(ran[id = vv_id], 
                   Tmax = 90*60, 
                   Lmin = 5, 
                   habitat = hab, 
                   activity = NULL)
  names(vv[[i]]) <- levels(ran_df$id)[i]
}

# Warning: VERY SLOW!!!!
# Takes about 25 minutes on my laptop (2.10 GHz Core2 Duo CPU w/ 4 GB ram)
# Can repeat for recursion / intensity distributions (t = "RD" or t = "ID")
for(i in 1:nrow(ob)){
  temp <- suppressWarnings(area.BRB(
    x = ran[id = ob[i, ]$id],
    start.date = as.POSIXct(as.Date(int_start(ob[i, ]$ints))), 
    end.date = as.POSIXct(as.Date(int_end(ob[i, ]$ints)) + days(1)), 
    hab = hab,    
    iso = c(50, 70, 95),
    t = "UD",
    vv = vv[[ob[i, ]$id]]
  ))
  
  ob[i, ]$area_core <- temp$hr$hr50$area
  ob[i, ]$area_primary <- temp$hr$hr70$area
  ob[i, ]$area_total <- temp$hr$hr95$area
  
  ob[i, ]$ndvi_core <- temp$ndvi$ndvi50
  ob[i, ]$ndvi_primary <- temp$ndvi$ndvi70
  ob[i, ]$ndvi_total <- temp$ndvi$ndvi95
  
  ob[i, ]$ndvi_high <- temp$ndvi$ndvi50
  ob[i, ]$ndvi_medium <- mean(ndvi[gDifference(temp$hr$hr70, 
                                               temp$hr$hr50), ]$ndvi, 
                              na.rm = TRUE)
  ob[i, ]$ndvi_low <- mean(ndvi[gDifference(temp$hr$hr95, 
                                            temp$hr$hr70), ]$ndvi, 
                           na.rm = TRUE)
  
  ud[[i]] <- temp$ud 
}


# ---- write_hr_data ------------------------------------------------------

ob$mean_tmax_s <- scale(ob$mean_tmax)
ob$mean_fruit_s <- scale(ob$mean_fruit)
ob$adult_mass_s <- scale(ob$adult_mass)

ob$start <- int_start(ob$ints)
ob$end <- int_end(ob$ints)

ob$rowid <- as.numeric(rownames(ob))

# Fix problem wiht Sept. 2008 weather gap
ob[is.na(ob$mean_tmax) & ob$block_type == "month" & (yday(ob$start) == 245 | yday(ob$start) == 244), ]$mean_tmax <- mean(subset(ob, block_type == "month" & (yday(start) == 245 | yday(start) == 244))$mean_tmax, na.rm = TRUE)

ob[is.na(ob$mean_tmin) & ob$block_type == "month" & (yday(ob$start) == 245 | yday(ob$start) == 244), ]$mean_tmin <- mean(subset(ob, block_type == "month" & (yday(start) == 245 | yday(start) == 244))$mean_tmin, na.rm = TRUE)

# Write to csv for later use
write.csv(ob, "ob.csv", row.names = FALSE)


# ---- write_ud ----------------------------------------------------------------

# Create directory to hold output files
mainDir <- getwd()
subDir1 <- "HomeRanges"
subDir2 <- "ud"
dir.create(file.path(mainDir, subDir1), showWarnings = FALSE)
dir.create(file.path(mainDir, subDir1, subDir2), showWarnings = FALSE)

# Repeat for each type of distribution
for(i in 1:length(ud)){  
  writeGDAL(ud[[i]][1],
            fname=paste("HomeRanges/ud/", 
                        sprintf('%03d',i), 
                        "_",ob[i,]$id,"_", 
                        ob[i,]$block_type, "_", 
                        as.Date(int_start(ob[i, ]$ints)), "_", 
                        as.Date(int_end(ob[i, ]$ints)), ".tif", 
                        sep = ""))
}

rm(mainDir)
rm(subDir1)
rm(subDir2)
rm(ud)
gc()


# ---- extra -------------------------------------------------------------------

# PLOTS
rects <- data.frame(xstart = c(ymd("2009-11-16"),ymd("2010-11-16"),ymd("2011-11-16")), xend = c(ymd("2010-05-15"),ymd("2011-05-15"),ymd("2012-05-15")), col = letters[1])

ggplot(ob,aes(x=id,y=area_total)) + geom_boxplot() + geom_point() + facet_grid(.~block_type)
# ggplot(ob,aes(x=id,y=mean_dpl)) + geom_boxplot() + geom_point() + facet_grid(.~block_type)
ggplot(ob,aes(x=id,y=ndvi_primary)) + geom_boxplot() + geom_point() + facet_grid(.~block_type)
# ggplot(ob,aes(x=id,y=ratio_50.95)) + geom_boxplot() + geom_point() + facet_grid(.~block_type)

ggplot(ob,aes(x=int_start(ints),y=area_total,group=id)) + geom_segment(aes(xend=int_end(ints),yend=area_total,colour=id),size=2) + facet_grid(block_type~id) + scale_color_brewer(type="qual")
# Same with shading
ggplot() + geom_rect(data = rects, aes(xmin = as.Date(xstart), xmax = as.Date(xend), ymin = -Inf, ymax = Inf, fill = col), alpha = 0.3) + geom_segment(data=ob,aes(x=as.Date(int_start(ints)),y=area_core,group=id,xend=as.Date(int_end(ints)),yend=area_core,colour=id),size=2) + facet_grid(block_type~.) + scale_color_brewer(type="qual")  + scale_x_date(limits=c(as.Date("2010-01-01"),as.Date("2012-01-01")))

# ggplot(manuscript,aes(x=int_start(ints),y=Total)) + geom_segment(aes(xend=int_end(ints),yend=Total,colour=id),size=1.5) + facet_grid(id~block_type) + geom_point(aes(x=int_start(ints) + as.difftime(ints)/2,color=id))
# Same with shading
ggplot() + geom_rect(data = rects, aes(xmin = as.Date(xstart), xmax = as.Date(xend), ymin = -Inf, ymax = Inf, fill = col), alpha = 0.3) + geom_segment(data=manuscript,aes(x=as.Date(int_start(ints)),y=ndvi_total,xend=as.Date(int_end(ints)),yend=ndvi_total,colour=id),size=1.5) + facet_grid(block_type~id) + geom_point(data=manuscript,aes(x=as.Date(int_start(ints) + as.difftime(ints)/2),y=ndvi_total,color=id)) + scale_x_date(limits=c(as.Date("2010-01-01"),as.Date("2012-01-01")))

ggplot(data=manuscript,aes(x=block_type,y=Total)) + geom_boxplot() + facet_wrap(~id,ncol=7)

# ggplot(eig,aes(x=as.Date((int_end(ints)-int_start(ints))/2 + int_start(ints)),y=area_core,group=as.Date(int_start(ints)))) + geom_boxplot() + scale_x_date(labels = date_format("%b"), breaks = date_breaks("1 months"))



