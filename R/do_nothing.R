select_id_and_coodinates <- function(raw_data) {
  raw_data |>
    dplyr::select(c("ID_de_trampa", "Coordenada_Este", "Coordenada_Norte"))
}

select_date_and_morphometry <- function(raw_data) {
  raw_data |>
    dplyr::select(-c("Zona", "Coordenada_Este", "Coordenada_Norte"))
}

extract_zone <- function(trap_id) {
  as.double(stringr::str_sub(trap_id, 5, 5))
}
