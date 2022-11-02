
# initialise docker container called schelper
docker run --name schelpr -it -v ${PWD}:/home/rstudio rocker/tidyverse:latest /bin/bash

# restart stopped schelpr container (remounts volume as originally mounted above)
docker start -i schelpr