# This is just a simple class that looks up a few hiera values
#  and validates that they are available, to ensure that hiera is
#  configured properly so it will be exercised during perf testing.
class profile::hiera_check(
  $param_to_validate = "wrong value"
) {
  $location = hiera('location')
  if ($location != "portland") {
    fail("Hiera lookup appears to have failed; location: '${location}'")
  }

  $sitename = hiera('sitename')
  if ($sitename != "mycompany") {
    fail("Hiera lookup appears to have failed; sitename: '${sitename}'")
  }

  $location_checkfield = hiera('location::portland::hiera_check_field')
  if ($location_checkfield != "foo") {
    fail("Hiera lookup appears to have failed; location_checkfield: '${location_checkfield}'")
  }

  if ($param_to_validate != "correct value") {
    fail("Hiera lookup appears to have failed; param_to_validate: '${param_to_validate}'")
  }
}
