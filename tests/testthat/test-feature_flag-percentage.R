test_that("Percentage feature flag creation method should inform about incorrect percentage values", {
  expect_snapshot_error(create_percentage_feature_flag(percentage = "not_a_number"))
  expect_snapshot_error(create_percentage_feature_flag(percentage = -0.4))
})

test_that("Percentage feature flag is enabled when random value is lower than threshold", {
  feature_flag <- create_percentage_feature_flag(percentage = 0.7)
  local_mocked_bindings(get_random_value = function() 0.3)

  result <- is_enabled(feature_flag)

  expect_true(result)
})


test_that("Percentage feature flag is disabled when random value is higher than threshold", {
  feature_flag <- create_percentage_feature_flag(percentage = 0.7)
  local_mocked_bindings(get_random_value = function() 0.8)

  result <- is_enabled(feature_flag)

  expect_false(result)
})
