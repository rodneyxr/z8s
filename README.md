# z8s - A collection of Zarf packages

This project requires [zarf](https://zarf.dev) to be installed.

# Build a package

`cd` into the desired package directory and run the following command.
```
zarf package create
```

# Deploy a package

```
zarf package deploy zarf-package-<name>-amd64.tar.zst
```