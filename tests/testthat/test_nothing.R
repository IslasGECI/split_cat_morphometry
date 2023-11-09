describe("Test all is ready", {
  raw_data <- readr::read_csv("/workdir/tests/data/morfometria_gatos_guadalupe.csv", show_col_types = FALSE)
  it("Only trapping: traps coordinates", {
    expected_columns <- c("ID_de_trampa", "Coordenada_Este", "Coordenada_Norte")
    obtained <- select_id_and_coodinates(raw_data)
    obtained_columns <- names(obtained)
    expect_equal(obtained_columns, expected_columns)
  })
  it("Only trapping: date and morphometry", {
    not_expected_columns <- c("Coordenada_Este", "Coordenada_Norte", "Zona")
    obtained <- select_date_and_morphometry(raw_data)
    obtained_columns <- names(obtained)
    are_not_there <- !obtained_columns %in% not_expected_columns
    expect_true(all(are_not_there))
  })
})

describe("Split zone from ID", {
  it("For one ID", {
    trap_id <- "TC-03-154-LM"
    extract_zone(trap_id)
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
