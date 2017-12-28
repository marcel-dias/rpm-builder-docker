# RPM Builder Docker Image

> Docker image to build RPM packages

## Install

This project will be configured to automatically build in DockerHub. So to get it locally you can use docker pull command.

```bash
docker pull marceldiass/rpm-builder
```

## Usage

To use the image to should provide the RPM sources and a spec file.
Add the sources or binary package do you want to pack into the RPM to rpmbuild/SOURCES. And create the [RPM spec file](http://ftp.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html) file in the folder `rpmbuild/SPECS`.

```bash
docker run --rm -ti -v "$(PWD)/rpmbuild:/root/rpmbuild" -e SPEC_FILE=test.spec marceldiass/rpm-builder
```

When the build ran without problems the RPM package will be located at `rpmbuild/RPMS`

## Contribute

PRs accepted.

## License

MIT © Marcel Dias