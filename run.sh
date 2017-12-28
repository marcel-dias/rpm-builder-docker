#!/bin/bash

docker run --rm -ti -v "$(PWD)/rpmbuild:/root/rpmbuild" -e SPEC_FILE=test.spec marceldiass/rpm-builder