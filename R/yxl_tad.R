yxl_tad <- function(df) {
  #' Use tad as an external data browser. tad needs to be installed
  #' independently
  #'
  #' @param df the data.frame to be exported.
  #' @export

  # Write `df` to a temp csv file, and invoke `tad` (specified by `tad_command`)
  # to open this temp csv file.
  tad_command <- "tad %s > /dev/null 2>&1 &"
  filename <- sprintf("%s.csv", tempfile())
  readr::write_csv(df, path = sprintf("%s", filename))
  system(sprintf(tad_command, filename),
         wait = FALSE, ignore.stderr = TRUE, ignore.stdout = TRUE)
}
