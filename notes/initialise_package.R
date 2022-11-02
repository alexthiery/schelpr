# setwd('./home/rstudio/')

install.packages(c('usethis', 'roxygen2', 'devtools'))

library(devtools)

# check package layout is correct
devtools::check()
#running check() also tests functions using examples in function specification

# add path to .Rbuildignore so that those files are ignored when the package is built (i.e. notes directory)
usethis::use_build_ignore('path')

# check package layout is correct
devtools::document()

# Install package using dev to test
devtools::install()



# Set up formal testing using testthat
use_testthat(3)

# initialises test for function test() in /tests/testthat/test-myfunc.R
use_test('myfunc')

# the test and expected result can then be declared as follows
# test_that("test-myfunc() splits a string", {
#   expect_equal(test-myfunc("a,b,c", split = ","), c("a", "b", "c"))
# })



# when writing tests use:
# tweak the foofy() function and re-load it
# devtools::load_all()

# # interactively explore and refine expectations and tests
# expect_equal(foofy(...), EXPECTED_FOOFY_OUTPUT)

# testthat("foofy does good things", {...})




# when tests for that specific function are ready you can test the whole test file using
# testthat::test_file("tests/testthat/test-foofy.R")


# to then run all the tests run:
devtools::test()
#  or even
devtools::check()






# when package is in suggests rather than imports in namespace, then run a check when package is used to run functions which call said function

# the suggested package is required 
my_fun <- function(a, b) {
  if (!requireNamespace("pkg", quietly = TRUE)) {
    stop(
      "Package \"pkg\" must be installed to use this function.",
      call. = FALSE
    )
  }
  # code that includes calls such as pkg::f()
}

# the suggested package is optional; a fallback method is available
my_fun <- function(a, b) {
  if (requireNamespace("pkg", quietly = TRUE)) {
    pkg::f()
  } else {
    g()
  }
}