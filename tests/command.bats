#!/usr/bin/env bats

setup() {
  load "$BATS_PLUGIN_PATH/load.bash"

  # Uncomment to enable stub debugging
  # export GIT_STUB_DEBUG=/dev/tty
}

@test "calls git log" {
  export BUILDKITE_PLUGIN_GIT_LOGGER_COMMIT="abc123"

  stub git "log abc123 : echo git log output"

  run $PWD/hooks/command

  assert_output --partial "git log output"
  assert_success
  unstub git
}
