join_traps_and_morphometry <- function(traps, morphometry) {
  morphometry <- traps |>
    dplyr::left_join(morphometry, by = c("ID_de_trampa" = "ID_de_trampa")) |>
    dplyr::mutate(Zona = extract_zone(ID_de_trampa)) |>
    dplyr::select(Fecha, ID_de_trampa, Zona, Coordenada_Este, Coordenada_Norte, Responsable_de_captura, Otros_responsables, Longitud_total, Longitud_de_cola, Altura, Sexo, Etapa_de_vida, Patron, Gris, Negro, Pardo, Amarillo, Naranja, Blanco, Peso, Condicion_corporal, Estado_de_salud, Estado_reproductivo, Contenido_estomacal_notas, Contenido_estomacal_plumas, Contenido_estomacal_pelos, Contenido_estomacal_insectos, Contenido_estomacal_plantas, Contenido_estomacal_desperdicios, Contenido_estomacal_inorganico, Observaciones)
}
