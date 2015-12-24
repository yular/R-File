corr <- function(directory, threshold = 0) {
  
  filenames = list.files(directory, pattern = "*.csv", full.names=TRUE)
  
#  ldf <- lapply(filenames, read.csv)
#  res <- do.call(rbind, ldf[id])
#  final <- res[complete.cases(res),]

#  res <- res[cor(final[,2], final[,3]),]
  id <- 1:332
  ans <- sapply(id, function(i) {
    dat <- read.csv(filenames[i])
    cnt <- sum(complete.cases(dat))
    if(cnt > threshold)
      dat <- dat[complete.cases(dat),]
      cor(dat[,2], dat[,3])
  })
 
  ans <- ans[complete.cases(ans)]
  ans
#  res
}
