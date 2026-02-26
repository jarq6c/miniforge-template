# Distributable Miniforge Environments

This template can be used as a starting point for building distributable Miniforge based packages. It includes a Makefile with targets necessary to build a reproducible Python virtual environment based on miniforge. To learn more about Miniforge see the [Miniforge Repository](https://github.com/conda-forge/miniforge).

## Build

```bash
$ make
```
Running `make` in this directory will retrieve and build the default environment specified in the Makefile. The chain of dependencies for the default target includes targets that retrieve a miniforge installation script for Linux and creates a stand-alone miniforge environment with the required dependencies. The name of the miniforge environment is `miniforge` and can be activated as normal using `source miniforge/bin/activate` and deactivated using `conda deactivate`. The default target includes an instruction to upgrade `conda`, and install `pip` and `wheel`.

To start from scratch run clean:
```bash
$ make clean
```
