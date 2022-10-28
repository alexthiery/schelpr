install.packages(c('usethis', 'roxygen2', 'devtools'))

# check package layout is correct
devtools::check()

# add path to .Rbuildignore so that those files are ignored when the package is built (i.e. notes directory)
usethis::use_build_ignore('path')