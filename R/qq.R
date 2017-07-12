#' A quick quit function
#'
#' @param save string to pass to q(save = save)
#' @return quits R session
#' @export

qq <- function(save = "no") {
  # Quit without confirmation.
  q(save=save)
}
