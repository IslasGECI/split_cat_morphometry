join_traps_and_morphometry <- function(traps, morphometry) {
  morphometry <- traps |>
    dplyr::left_join(morphometry, by = c("ID_de_trampa" = "ID_de_trampa"))
}
