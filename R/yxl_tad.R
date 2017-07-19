yxl_tad <- function(df) {
  #' Use tad as an external data browser. tad needs to be installed
  #' independently
  #'
  #' @param df the data.frame to be exported.
  #' @export

  # Use tad as an external data browser.
  # Need to have tidyverse installed.
  filename <- sprintf("%s.csv", tempfile())
  readr::write_csv(df, path = sprintf("%s", filename))
  system(sprintf("tad %s & disown", filename),
         wait = FALSE, ignore.stderr = TRUE, ignore.stdout = TRUE)
}
