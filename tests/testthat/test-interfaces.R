describe("Split 'morfometria_gatos_guadalupe' in traps_coordinates and date_and_morphometry", {
  it("split", {
    raw_data <- readr::read_csv("/workdir/tests/data/morfometria_gatos_guadalupe.csv", show_col_types = FALSE)
    select_id_and_coodinates(raw_data) |> write_csv("tests/data/traps_coordinates.csv")
  })
})

describe("Join traps_coordinates and date_and_morphometry", {
  it("", {
  })
})
