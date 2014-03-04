
# ---- plot_data_prep -----------------------------------------------------

manuscript <- ob
manuscript$block_type <- revalue(manuscript$block_type, 
                                 c("month" = "Monthly", 
                                   "quarter" = "Quarterly", 
                                   "half" = "Half-yearly", 
                                   "year" = "Yearly"))

names(manuscript)[10:12] <- c("Core","Primary","Total")


# ---- plot_hr_periods ----------------------------------------------------

date_begin <- min(int_start(ob$ints))
date_end <- max(int_end(ob$ints))

p1 <- ggplot(ran_df, aes(x = date, 
                         y = as.numeric(id) - 0.25, color = id)) +
  geom_hline(aes(yintercept = as.numeric(id)), color = "gray50") +
  geom_segment(aes(xend = date, yend = as.numeric(id) + 0.25), 
               alpha = 0.1) + 
  theme_bw() +
  scale_y_continuous(breaks = 1:length(levels(factor(ran_df$id))), 
                     labels = c(levels(ran_df$id))) + 
  scale_x_datetime(breaks = date_breaks("1 years"), 
                   labels = date_format("%Y"),
                   limits = c(date_begin, date_end)) +
  theme(panel.border = element_blank(),
        panel.grid.major.y = element_blank(), 
        panel.grid.minor.y = element_blank(),
        axis.text.y = element_text(size = 8),
        legend.position = "bottom") +
#   scale_color_brewer(name = "Group", palette = "Set2") + 
  scale_color_discrete(name = "Group", guide = "none") +
  labs(x = "Date", y = "Group") +
  ggtitle("Observation Periods") +
  facet_grid(id ~ ., drop = TRUE, scales = "free_y")


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
p2 <- ggplot(manuscript, aes(x = int_start(ints) + days(3),
                     y = factor(id, levels = rev(levels(id))),
                     color = id)) +
  geom_segment(aes(xend = int_end(ints) - days(3), 
                   yend = id), 
               size = 2) + 
  theme_bw() + 
  scale_color_discrete(guide = "none") +
#   scale_color_brewer(guide = "none", palette = "Accent") + 
  theme(panel.border = element_rect(fill = NA, colour = "grey50"),
        axis.text.y = element_text(size = 8)) +
  scale_x_datetime(breaks = date_breaks("1 years"), 
                   labels = date_format("%Y"),
                   limits = c(date_begin, date_end)) +
  facet_grid(block_type ~ .) + 
  labs(x = "Date", y = "") +
  ggtitle("Included Home Range Intervals")

grid.arrange(p1, p2)


# ---- plot_hr_area -------------------------------------------------------

zones <- melt(manuscript, 
              id.vars = c("id", "block_type", "rowid"), 
              measure.vars = c("Core", "Primary", "Total"))

give.n <- function(x){
  return(c(y = boxplot.stats(x)$stats[5] + 20, label = length(x)))
}

# Figure 2
ggplot(zones, aes(x = variable, y = value, fill = variable)) + 
  geom_boxplot() + 
  theme_bw() + 
  facet_grid(id ~ block_type) + 
  labs(x = "", y = "Area (ha)") + 
  guides(fill = guide_legend(title = "Range Zone")) + 
  scale_fill_brewer(palette = "Reds") + 
  stat_summary(fun.data = give.n, geom = "text", color = "black", size = 4) + 
  theme(legend.position = "bottom")

ggplot(zones, aes(x = block_type, y = value)) + 
  geom_boxplot(fill = "gray80") + 
  theme_excel() + 
  facet_grid(. ~ variable) + 
  labs(x = "", y = "Area (ha)") +  
#   scale_fill_brewer(palette = "Reds", guide = "none") + 
  stat_summary(fun.data = give.n, geom = "text", color = "black", size = 4) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# ---- plot_monthly_area --------------------------------------------------

# Monthly only
zones <- melt(subset(manuscript, block_type == "Monthly"),   
              id.vars = c("id", "block_type", "rowid", "start"), 
              measure.vars = c("Core", "Primary", "Total"))

zones$month <- factor(month(zones$start))
levels(zones$month) <- month.abb

ggplot(zones, aes(x = month, y = value, fill = month)) + 
  geom_boxplot() + 
  theme_bw() + 
  facet_grid(. ~ variable, scales = "free_y") + 
  labs(x = "", y = "Area (ha)") +  
  stat_summary(fun.data = give.n, geom = "text", color = "black", size = 4) +
  scale_fill_discrete(guide = FALSE) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# All scales, by months
zones <- melt(manuscript,   
              id.vars = c("id", "block_type", "rowid", "start"), 
              measure.vars = c("Core", "Primary", "Total"))

zones$month <- factor(month(zones$start))
levels(zones$month) <- month.abb

give.n <- function(x){
  return(c(y = boxplot.stats(x)$stats[5] + 5, label = length(x)))
}

ggplot(subset(zones, variable == "Primary"), 
       aes(x = month, y = value, fill = block_type)) + 
  geom_boxplot() + 
  theme_bw() + 
  facet_grid(block_type ~ ., scales = "free_y") + 
  labs(x = "", y = "Area (ha)") + 
  scale_fill_brewer(palette = "Reds", guide = "none") +
  stat_summary(fun.data = give.n, geom = "text", color = "black", size = 4) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# All scales, by intervals
zones <- melt(manuscript,   
              id.vars = c("id", "block_type", "rowid", "start"), 
              measure.vars = c("Core", "Primary", "Total"))

zones$month <- factor(month(zones$start))
levels(zones$month) <- month.abb

t1 <- subset(zones, block_type == "Monthly")
t2 <- subset(zones, block_type == "Quarterly")
t2$month <- revalue(t2$month, c("Feb" = "Late Dry", "May" = "Early Wet", "Aug" = "Late Wet", "Nov" = "Early Dry"))
t3 <- subset(zones, block_type == "Half-yearly")
t3$month <- revalue(t3$month, c("May" = "Wet", "Nov" = "Dry"))
t4 <- subset(zones, block_type == "Yearly")
t4$month <- revalue(t4$month, c("Jan" = "Year"))

zones <- rbind(t1, t2, t3, t4)

zones$month <- factor(zones$month, levels = c(month.abb, "Early Dry", "Late Dry", "Early Wet", "Late Wet", "Dry", "Wet", "Year"), ordered = TRUE)

ggplot(zones, 
       aes(x = month, y = value, fill = block_type)) + 
  geom_boxplot() + 
  theme_bw() + 
  facet_grid(variable ~ block_type, scales = "free", 
             shrink = TRUE, drop = TRUE) + 
  labs(x = "", y = "Area (ha)") + 
  scale_fill_brewer(palette = "Reds", guide = "none") +
  stat_summary(fun.data = give.n, geom = "text", color = "black", size = 4) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(subset(zones, variable == "Primary"),
       aes(x = month, y = value, fill = block_type)) + 
  geom_boxplot() + 
  theme_bw() + 
  facet_grid(. ~ block_type, scales = "free", shrink = TRUE, drop = TRUE) + 
  labs(x = "", y = "Area (ha)") + 
  scale_fill_brewer(palette = "Reds", guide = "none") +
  stat_summary(fun.data = give.n, geom = "text", color = "black", size = 4) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# ---- plot_hr_mass ----------------------------------------------------------

zones <- melt(manuscript, 
              id.vars = c("id", "block_type", "adult_mass", "nb_reloc"), 
              measure.vars=c("Core", "Primary", "Total"))

lm_eqn <- function(df){
  m <- lm(value ~ adult_mass, df);
  eq <- substitute(~~R^2~"="~r2, 
                   list(r2 = format(summary(m)$r.squared, digits = 3)))
  as.character(as.expression(eq));                 
}

eqns <- ddply(zones, .(block_type, variable), .fun = lm_eqn)
names(eqns)[3] <- "eq"

ggplot() + 
  geom_point(data = zones, 
             aes(x = adult_mass, y = value, group = 1, color = id)) + 
  stat_smooth(data = zones, 
              aes(x = adult_mass, y = value, group = 1, color = id),
              method = "lm", color = "black") + 
  geom_text(data = eqns, aes(x = 35, y = 250, label = eq), 
            parse = TRUE, size = 3) +
  theme_bw() + 
  facet_grid(block_type ~ variable) +
#   facet_grid(variable ~ block_type, scales = "free_y") + 
  labs (x = "Adult mass (kg)", y = "Area (ha)") + 
  scale_color_discrete(name = "Group")


# plot_ndvi_zones ---------------------------------------------------------

zones <- melt(manuscript, 
              id.vars = c("id", "block_type", "rowid"), 
              measure.vars = c("ndvi_high", "ndvi_medium", "ndvi_low"))

zones$variable <- factor(revalue(zones$variable, 
                                 c("ndvi_low" = "Low",
                                   "ndvi_medium" = "Medium",
                                   "ndvi_high" = "High")), 
                         levels = c("Low", 
                                    "Medium",
                                    "High"))

# Figure 5
ggplot(zones, aes(x = variable, y = value)) + 
  geom_line(aes(group = rowid), color = "black", alpha = 0.2) + 
  geom_point(color = "black", alpha = 0.8, show_guide = FALSE) + 
  geom_boxplot(fill = "white", outlier.shape = NA, 
               alpha = 0.8, width = 0.6) + 
  theme_bw() + 
  facet_grid(. ~ block_type) + 
  labs(y = "Forest Age Index", x = "Usage Intensity") + 
  scale_fill_brewer(name = "Usage Intensity", palette = "Reds", 
                    guide = "none") + 
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        legend.position = "bottom")



# plot_fruit_spline -------------------------------------------------------

biomass <- temp

biomass$month_of <- factor(biomass$month_of, levels = month.abb)

ggplot() + 
  geom_bar(data = biomass, aes(x = date_of, 
                               y = combined_monthly_kg,
                               fill = month_of), 
#            fill = "gray40"
           stat = "identity") +
  geom_point(data = biomass_daily, 
             aes(x = date_of, 
                 y = spline), 
             pch = 1) +
  geom_point(data = subset(biomass_daily, day(date_of) == 1),
             aes(x = date_of, 
                 y = spline),
             color = "red") +
  scale_x_datetime(breaks = date_breaks("1 months"), 
                   labels = date_format("%b"), 
                   limits = c(as.POSIXct("2011-01-01"), 
                              as.POSIXct("2012-01-01"))) +
  theme_bw() +
  scale_fill_discrete(guide = "none") +
  labs(x = "Month", y = "Available fruit biomass (kg / ha)")


# ---- plot_monthly_predictors --------------------------------------------

zones <- melt(manuscript,   
              id.vars = c("id", "block_type", "rowid", "start"), 
              measure.vars = c("Core", "Primary", "Total"))

zones$month <- factor(month(zones$start))
levels(zones$month) <- month.abb

zones <- subset(zones, block_type == "Monthly")
zones$month <- factor(zones$month, levels = month.abb)

p1 <- ggplot(subset(zones, variable == "Primary"), 
             aes(x = month, y = value)) + 
  geom_boxplot(fill = "gray60") + 
  theme_few() + 
  labs(x = "", y = "Primary Ranging Area (ha)") + 
#   scale_fill_discrete(guide = "none") +
  stat_summary(fun.data = give.n, geom = "text", color = "black", size = 4)

p2 <- ggplot() + 
  geom_bar(data = biomass, aes(x = date_of, 
                               y = combined_monthly_kg), 
           fill = "gray60",
           stat = "identity",
           color = "black", width = period_to_seconds(days(20))) +
  geom_point(data = biomass_daily, 
             aes(x = date_of, 
                 y = spline), 
             pch = 1) +
  geom_point(data = subset(biomass_daily, day(date_of) == 1),
             aes(x = date_of, 
                 y = spline),
             color = "white") +
  scale_x_datetime(breaks = date_breaks("1 months"), 
                   labels = date_format("%b"), 
                   limits = c(as.POSIXct("2011-01-01"), 
                              as.POSIXct("2011-12-01"))) +
  theme_few() +
#   scale_fill_discrete(guide = "none") +
  labs(x = "", y = "Available fruit biomass (kg / ha)")

wea <- read.csv("../Weather/filledfiltered_weather.csv")
wea$date_of <- ymd(as.character(wea$date_of))

temp <- subset(wea, year(date_of) >= 2006)
temp$mon <- factor(month(temp$date_of))
levels(temp$mon) <- month.abb

p3 <- ggplot(temp, aes(x = mon, y = tmax)) + 
  geom_violin(fill = "gray60", trim = FALSE, scale = "width", width = 0.7) + 
  geom_boxplot(fill = "white", color = "black", width = 0.4, outlier.shape = NA) + 
#   scale_fill_discrete(guide = "none") +
  labs(x = "Month", y = "Daily maximum temperature") +
  theme_few()

grid.arrange(p1, p2, p3, ncol = 1)

# ---- plot_maps ----------------------------------------------------------

library(rasterVis)

temppal <- brewer.pal(9, "YlOrRd")
temppal[1] <- "#FFFFFF"
tempcols <- colorRampPalette(temppal, interpolate="spline")(100)
FCTheme <- rasterTheme(region = tempcols)

f <- list.files("HomeRanges/ud/")

r1 <- readGDAL(paste("HomeRanges/ud/", f[16],sep=""))
fullgrid(r1) <- FALSE
r1 <- raster(r1)
names(r1) <- "Monthly"

r2 <- readGDAL(paste("HomeRanges/ud/", f[24],sep=""))
fullgrid(r2) <- FALSE
r2 <- raster(r2)
names(r2) <- "Quarterly"

r3 <- readGDAL(paste("HomeRanges/ud/", f[29],sep=""))
fullgrid(r3) <- FALSE
r3 <- raster(r3)
names(r3) <- "Half-yearly"

r4 <- readGDAL(paste("HomeRanges/ud/", f[30],sep=""))
fullgrid(r4) <- FALSE
r4 <- raster(r4)
names(r4) <- "Yearly"

hr_stack <- stack(r1, r2, r3, r4, r1, r2, r3, r4)

minz <- 0
maxz <- max(cellStats(hr_stack, stat='max'))

#### Repeat the remaining code for each HR to plot
# Year: 24
# Half: 23
# Quarter: 18
# Eighth: 11

i <- 16

# Get tracks and points
foo <- function(dt) {return(dt > (90*60))}
x <- ran[id = ob[i, ]$id]
start.date <- int_start(ob[i, ]$ints)
end.date <- int_end(ob[i, ]$ints)
start.date <- as.POSIXct(as.Date(start.date))
end.date <- as.POSIXct(as.Date(end.date) + days(1))
x.sub <- gdltraj(x, min = start.date, max = end.date, type = "POSIXct")
ra <- cutltraj(x.sub, "foo(dt)", nextr = TRUE)
ra_lines <- ltraj2sldf(ra)
xy <- cbind(ld(ra)$x, ld(ra)$y)
xysp <- SpatialPoints(xy)

# Only run once for the yearly HR!
# xlim = c(min(xy[, 1]) - 250, max(xy[, 1]) + 250)
# ylim = c(min(xy[, 2]) - 250, max(xy[, 2]) + 250)

# Get HR zones
r <- as(r1, "SpatialPixelsDataFrame") # Change as needed
names(r) <- "ud"
d <- r  
re <- lapply(1:ncol(d), function(i) {
  so <- new("estUD", d[, i])
  so@h <- list(h = 0, meth = "specified")
  so@vol <- FALSE
  return(so)
})

names(re) <- names(d)
class(re) <- "estUDm"
z_core <- getverticeshr(re, percent = 50)
z_primary <- getverticeshr(re, percent = 70)
z_total <- getverticeshr(re, percent = 95)


# Plots

# Basic UD maps
p <- levelplot(hr_stack, par.settings = FCTheme, xlab = "Easting", ylab = "Northing", colorkey = FALSE, at = seq(minz, maxz, length = 100), xlim = xlim, ylim = ylim, layout=c(4, 2))

# With lines and points
p + layer(sp.points(xysp, col = "black", pch = ".", cex = 2, alpha = 0.5)) + layer(sp.lines(ra_lines, lwd = 0.5, lty = 1, alpha = 0.5))

# With home range zones
p + layer(sp.polygons(z_core, lwd = 1, lty = 1)) + layer(sp.polygons(z_primary, lwd = 1, lty = 2)) + layer(sp.polygons(z_total, lwd = 1, lty = 3))

# With habitat map
image(hab,col=brewer.pal(4,"YlGn"))
plot(z_core, add = TRUE, lwd = 1, lty = 1)
plot(z_primary, add = TRUE, lwd = 1, lty = 2)
plot(z_total, add = TRUE, lwd = 1, lty = 3)
