# get list of files
gitpath <- Sys.getenv("LOCAL_GITHUB")
dps <- list.dirs(paste(gitpath, "NEON-quick-start-guides", sep="/"))
dps <- dps[grep("DP[0-4]{1}[.]", dps)]

tjt <- character()
# iterate over data products
for(i in 1:length(dps)) {
  
  # pull out all the table joining tables
  tpath <- paste(dps[i], "Table.joining.md", sep="/")
  tmd <- try(suppressWarnings(readLines(tpath)), silent=TRUE)
  if(class(tmd)=="try-error") {
    next
  }
  if(length(tmd)==0) {
    next
  }
  if(identical(tmd, "")) {
    next
  }
  
  # pull data out of markdown
  l <- lapply(tmd, FUN=function(x) {
    y <- unlist(strsplit(x, "|", fixed=TRUE))
    y <- gsub("\\", y, replacement="", fixed=TRUE)
    y[which(y=="")] <- rep("placeholder", length(which(y=="")))
    return(y)
  })
  l.names <- l[[1]]
  
  # check format of title rows
  tl <- l[c(1:3)]
  for(k in 1:2) {
    if("placeholder" %in% tl[[k]]) {
      tl[[k]] <- tl[[k]][-which(tl[[k]]=="placeholder")]
    }
  }
  if(length(tl[[1]])!=length(tl[[2]])) {
    print(paste("Bad header row for ", dps[i], sep=""))
  }
  if(length(tl[[1]])!=length(tl[[3]])) {
    print(paste("Header does not match rows for ", dps[i], sep=""))
  }
  
  l <- l[-c(1,2)]
  
  # convert data to table form
  tab <- do.call(rbind.data.frame, l)
  if(ncol(tab)==3) {
    tab$JoinByTable2 <- tab[,3]
    tab <- cbind(tab, rep(NA, nrow(tab)))
  }
  if(ncol(tab)==4 & "Notes" %in% l.names) {
    tab <- data.frame(cbind(tab[,1], tab[,2], tab[,3], tab[,3], tab[,4]))
  }
  if(ncol(tab)==4 & !"Notes" %in% l.names) {
    tab <- cbind(tab, rep(NA, nrow(tab)))
  }
  names(tab) <- c("Table1","Table2","JoinByTable1","JoinByTable2","Notes")
  tab[tab=="placeholder"] <- ""
  
  # add to shared table
  tjt <- rbind(tjt, tab)
}

write.csv(tjt, paste(gitpath, "/NEON-quick-start-guides/allTableJoins.csv", sep=""),
          quote=TRUE, row.names=FALSE)
