
get_yesterday <- function(){
  return(Sys.Date() - 1)
}

gitcreds::gitcreds_set()


library(usethis)

# Add PAT to enviro file and save
edit_r_environ()

# Restart R

# Reload usethis library
library(usethis)

use_github(protocol = "https", auth_token = Sys.getenv("GITHUB_PAT"))
