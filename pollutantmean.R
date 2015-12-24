pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  filenames = list.files(directory, pattern = "*.csv", full.names=TRUE)
  ldf <- lapply(filenames, read.csv)
  res <- do.call(rbind, ldf[id])

  mean(res[, pollutant], na.rm=TRUE)
  
}
