describe("Test all is ready", {
  it("Read tests data", {
    raw_data <- readr::read_csv("/workdir/tests/data/morfometria_gatos_guadalupe.csv", show_col_types = FALSE)
    expected_columns <- c("ID_de_trampa", "Coordenada_Este", "Coordenada_Norte")
    obtained <- select_id_and_coodinates(raw_data)
    obtained_columns <- names(obtained)
    expect_true(obtained_columns, expected_columns)
  })
})

describe("Get version of the module", {
  it("The version is 0.1.0", {
    expected_version <- c("0.1.0")
    obtained_version <- packageVersion("catphometry")
    version_are_equal <- expected_version == obtained_version
    expect_true(version_are_equal)
  })
})
