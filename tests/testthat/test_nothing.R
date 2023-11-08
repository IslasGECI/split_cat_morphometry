describe("Test all is ready", {
  it("Read tests data", {
    raw_data <- readr::read_csv("/workdir/tests/data/morfometria_gatos_guadalupe.csv")
    obtained <- return_one()
    expect_equal(expected, obtained)
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
