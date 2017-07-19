yxl_lsdf <- function () {
  #' Show details of the data frames in the current environment
  #'
  #' @export

  obj_names <- ls(pos = 1)
  if (!identical(obj_names, character(0))) {
    for (x in obj_names) {
      if ("data.frame" %in% class(get(x, pos = 1))) {
        cat(x, "\n")
        utils::str(get(x, pos = 1))
        cat("\n")
      }
    }
  }
}
