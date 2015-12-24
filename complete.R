complete <- function(directory, id = 1:332) {
  
  filenames = list.files(directory, pattern = "*.csv", full.names=TRUE)
  
  counts <- sapply(id, function(i) {
      dat <- read.csv(filenames[i])
      sum(complete.cases(dat))
  })
  
  data.frame(id=id, nobs=counts)
}
