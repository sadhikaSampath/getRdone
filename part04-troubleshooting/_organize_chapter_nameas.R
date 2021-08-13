
keyword <- "part"
function(keyword){

}

# determine number of files
# get all files with full path
fullpath <- here::here(list.files(pattern = ".Rmd",
                                  recursive = T,
                                  full.names = F))

# get base names from full path
files.basename <- basename(fullpath)


files.with_.i <- grep("^[_]{1}.*",files.basename)
files.basename[files.with_.i]
index.i       <- grep("index", files.basename) # file named index

n.files <- length(index.i)

# get director
dirs.all <- list.dirs(here::here(),recursive = F)
dirs.focal.i <- grep(keyword,dirs.all)
dirs.focal <- dirs.all[dirs.focal.i]




dirs.focal[i]

files.dir.i <- list.files(dirs.focal[i],recursive = T)
order.i <- order(files.dir.i)

