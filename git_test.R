
get_yesterday <- function(){
  return(Sys.Date() - 1)
}

# alternative method
#gitcreds::gitcreds_set()

library(usethis)

# add PAT to enviro file (GITHUB_PAT = "xxxxxxxxxxxxxxxxxxx") and save file
edit_r_environ()

# restart R

# reload usethis package
library(usethis)

# pushes this project to github
use_github(protocol = "https", auth_token = Sys.getenv("GITHUB_PAT"))
