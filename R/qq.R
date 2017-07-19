qq <- function(save = "no") {
  #' A quick quit function
  #'
  #' @param save string to pass to q(save = save)
  #' @return quits R session
  #' @export

  # Quit without confirmation.
  q(save=save)
}
