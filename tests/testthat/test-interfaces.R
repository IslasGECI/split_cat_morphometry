describe("Split 'morfometria_gatos_guadalupe' in traps_coordinates and date_and_morphometry", {
  it("split", {
    raw_data <- readr::read_csv("/workdir/tests/data/morfometria_gatos_guadalupe.csv", show_col_types = FALSE)
    select_id_and_coodinates(raw_data) |> readr::write_csv("/workdir/tests/data/traps_coordinates.csv")
    select_date_and_morphometry(raw_data) |> readr::write_csv("/workdir/tests/data/date_and_morphometry.csv")
  })
})

describe("Join traps_coordinates and date_and_morphometry", {
  it("Join", {
    traps_coordinates <- readr::read_csv("/workdir/tests/data/traps_coordinates.csv", show_col_types = FALSE)
    date_and_morphometry <- readr::read_csv("/workdir/tests/data/date_and_morphometry.csv", show_col_types = FALSE)
    expected_morphometry <- readr::read_csv("/workdir/tests/data/morfometria_gatos_guadalupe.csv", show_col_types = FALSE)
    obtained_morphometry <- join_traps_and_morphometry(traps_coordinates, date_and_morphometry)
    expect_equal(obtained_morphometry, expected_morphometry)
  })
})
