return_one <- function() {
  return(1)
}

select_id_and_coodinates <- function(raw_data) {
  raw_data |>
    dplyr::select(c("ID_de_trampa", "Coordenada_Este", "Coordenada_Norte"))
}
