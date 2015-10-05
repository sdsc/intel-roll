# SDSC "intel" roll

## Overview

This roll bundles the installation of Intel&reg; compilers which are part of the
Intel&reg; Composer XE Suite.

> ### IMPORTANT NOTE
>
> **The actual compilers and/or libraries and licenses must be obtained from
> Intel&reg; directly as this roll only wraps the compilers and/or libraries
> into a Rocks roll for installation into a Rocks cluster.**

For more information about the Intel&reg; Compilers please visit the official
web page:

-   [Intel Composer XE Suites](http://software.intel.com/en-us/intel-composer-xe)
combines all the serial and parallel tools from Intel&reg; C++ Composer XE with
those from Intel&reg; Fortran Composer XE.

For more information about licenses for the Intel&reg; Performance Libraries
which include:

-   Intel&reg; Math Kernel Library
-   Intel&reg; Threaded Building Blocks
-   Intel&reg; Performance Primitives

...please visit the official web page:

-   [Free Intel&reg; Software Development Tools](https://software.intel.com/en-us/qualify-for-free-software)

## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

In addition, non-SDSC users must also place the `tgz` bundles of the Intel&reg;
compiler source (`l_ccompxe_<VERSION>.tgz` and `l_fcompxe_<VERSION>.tgz`)
obtained from Intel&reg; in the `src/intel-compilers` directory and the `tgz`
bundles for the Intel&reg; Performance Primitives (`l_ipp_<VERSION>.tgz`),
Intel&reg; Threaded Building Blocks (`l_tbb_<VERSION>.tgz`) and Intel&reg; Math
Kernel Library (`l_mkl_<VERSION>.tgz`) in the `src/intel-libraries` directory.

If the versions of the Intel&reg; compilers and/or libraries obtained from
Intel&reg; are newer than those listed in the `src/intel-compilers/version.mk`
or `src/intel-libraries/version.mk` files the appropriate `version.mk` file must
also be edited.

## Dependencies

The sdsc-roll must be installed on the build machine, since the build process
depends on make include files provided by that roll.

## Building the Intel Roll with Compilers

To build the intel-roll, execute this on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make 2>&1 | tee /tmp/build-intel-roll.log
```

A successful build will create the file `intel-*.disk*.iso`.  If you built the
roll on a Rocks frontend, proceed to the installation step. If you built the
roll on a Rocks development appliance, you need to copy the roll to your Rocks
frontend before continuing with installation.

## Building the Intel Roll with Libraries Only

If you do not have a license for the Intel&reg; compilers but do have a license
for Intel&reg; Performance Libraries you can build those libraries into a Rocks
roll using this roll source.

```shell
% make ROLLNAME=mkl 2>&1 | tee /tmp/build-mkl-roll.log
```

A successful build will create the file `mkl-*.disk*.iso`.  If you built the
roll on a Rocks frontend, proceed to the installation step. If you built the
roll on a Rocks development appliance, you need to copy the roll to your Rocks
frontend before continuing with installation.

## Installing the Intel Roll with Compilers

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll intel
% cd /export/rocks/install
% rocks create distro
% rocks run roll intel | bash
```

In addition to the software itself, the roll installs intel environment
module files in:

```shell
/opt/modulefiles/compilers/intel
```

## Installing the Intel Roll with Libraries Only

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll mkl
% cd /export/rocks/install
% rocks create distro
% rocks run roll mkl | bash
```

In addition to the software itself, the roll installs Intel&reg; Performance
Libraries environment module files in:

```shell
/opt/modulefiles/applications/mkl
```

## Testing the Intel Roll with Compilers

The intel-roll includes a test script which can be run to verify proper
installation of the intel-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/intel.t
```

## Testing the Intel Roll with Libraries Only

The mkl-roll includes a test script which can be run to verify proper
installation of the mkl-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/mkl.t
```
