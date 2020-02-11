# Blackbox exporter package

This repo is designed to package blackbox exporter based upon the Github releases.
The package can be built with the following command:

```
./package.sh <blackbox_exporter version> <arch>
```

This command will build a `blackbox_exporter.deb`.

## TODO

Figure out a way to automatically uptake the version number in `nfpm.yaml` to match the downloaded
version.
