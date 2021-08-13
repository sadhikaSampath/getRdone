
underscore_all_filenames <- function(){
  # get all files with full path
  fullpath <- here::here(list.files(pattern = ".Rmd",
                                    recursive = T,
                                    full.names = F))

  # get base names from full path
  files.basename <- basename(fullpath)


  files.with_.i <- grep("^[_]{1}.*",files.basename)
  files.basename[files.with_.i]
  index.i       <- grep("index", files.basename) # file named index

  # get full paths of files that lack "_"
  fullpath.no_ <- fullpath[-drop.i]


  # files to drop
  drop.i <- c(files.with_.i,
              index.i)

  # drop files
  files.no_ <- files.basename[-drop.i]

  # add "_"
  files.add_ <- paste0("_",files.no_)



  # storage vector
  fullpath_renamed <- fullpath.no_
  fullpath_renamed[ ] <- NA


  length(files.no_)
  length(files.add_)
  length(fullpath.no_)
  # loop
  for(i in 1:length(fullpath_renamed)){
    fullpath_renamed[i] <- gsub(files.no_[i],
                                files.add_[i],
                                fullpath.no_[i])
  }


  for(i in 1:length(fullpath_renamed)){
    file.rename(fullpath.no_[i], fullpath_renamed[i])
  }


}
