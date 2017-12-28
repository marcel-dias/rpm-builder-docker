#!/bin/bash

validateSpecfile() {
  if [ "${SPEC_FILE}" == "" ]; then
    echo "The spec file must be informed. Please set the ENV_VAR SPEC_FILE. Example: docker run -e SPEC_FILE=test.spec marceldiass/rpm-builder"
    exit 1;
  fi
}

# executions
validateSpecfile

exec "$@"