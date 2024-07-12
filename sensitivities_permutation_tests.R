library(dplyr)
source("response_time.R")

# Get sensitivity values (response times) for each contrasting state
data <- get_sensitivities()[[1]]

# Permutation tests
## Extract data for the permutation tests
### Get upper limits of response times
  mx <- unlist(lapply(data, function(x) lapply(x$states, function(x) x$ett[2])))
### Get lower limits of response times
  mn <- unlist(lapply(data, function(x) lapply(x$states, function(x) x$ett[1])))
### Get latitudes of critical thresholds
  cr <- unlist(lapply(data, function(x) lapply(x$states, function(x) x$cy)))
### Get total number of critical thresholds  
  nsta <- sum(unlist(lapply(data, function(x) length(x$states))))

## Calculate mean observed latitude of critical thresholds with low sensitivity (>100 years)
  low <- mean(cr[mx == 1000])
## Calculate mean observed latitude of critical thresholds with high sensitivity (1-10 years)
  high <- mean(cr[mn == 1])
## Calculate mean observed latitude of critical thresholds with high sensitivity
## (removing those with uncertainty on response time: i.e. 1-10;10-100 years)
  high_conservative <- mean(cr[mx == 10])
## Calculate mean observed latitude of critical thresholds with high sensitivity (10-100 years)
  mod <- mean(c(cr[mn == 1 & mx == 100], cr[mn == 10]))

## Perfom permutation tests

### Create function
permutation_test <- function(vec, name, lat){

  sensitivity <- apply(combn(nsta, sum(vec)), 2, function(x) mean(cr[x]))
  jpeg(paste0("hist_", name, ".jpg"))
  hist(sensitivity, main = "", xlab = "Mean latitude(°N)")
  abline(v = lat, lwd = 2, col = "purple")
  dev.off()
  print(paste0("length ", name, " ", length(sensitivity)))

  # probability that average latitude is lower than the observed one
  p_low <- sum(sensitivity <= lat) / length(sensitivity)
  # probability that average latitude is higher than the observed one
  p_low2 <- sum(sensitivity >= lat) / length(sensitivity)

  return(
    list(
      n_critical_thresholds = sum(vec),
      n_permutations = length(sensitivity),
      p_val_avg_lower_than_observed = p_low,
      p_val_avg_higher_than_observed = p_low2
      )
      )
}

### Perform the test for each set of data (low, high, and mod sensitivities)
permutation_test(vec=c(mx == 1000), name = "low_sensitivity", lat = low)
permutation_test(vec=c(mn == 1), name = "high_sensitivity", lat = high)
permutation_test(vec=c(mx == 10), name = "high_sensitivity_conservative", lat = high_conservative)
permutation_test(vec=c(mn == 1 & mx == 100, mn==10), name = "mod_sensitivity", lat = mod)
