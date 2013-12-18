# SDSC "intel" roll

## Overview

This roll bundles the installation of Intel(r) compilers which are part of the
Intel® Composer XE Suite.

**NOTE: The actual compilers and licenses must be obtained from Intel(r)
directly as this roll only wraps the compilers into a Rocks roll for
installation into a Rocks cluster.**

For more information about the Intel Compilers please visit the official web
page:

- <a href="http://software.intel.com/en-us/intel-composer-xe"
target="_blank">Intel Composer XE Suites</a> combines all the serial and
parallel tools from Intel(r) C++ Composer XE 2013 with those from Intel(r)
Fortran Composer XE 2013.


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate intel source file(s) using a machine that does have
Internet access and copy them into the `src/intel-compilers` directory on your
Rocks development machine.


## Dependencies

Unknown at this time.


## Building

To build the intel-roll, execute these instructions on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make default 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been
created as... `intel-*.iso`. If you built the roll on a Rocks frontend then
proceed to the installation step. If you built the roll on a Rocks development
appliance you need to copy the roll to your Rocks frontend before continuing
with installation.


## Installation

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


## Testing

The intel-roll includes a test script which can be run to verify proper
installation of the intel-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/intel.t 
ok 1 - intel is installed
ok 2 - intel test run
ok 3 - intel module installed
ok 4 - intel version module installed
ok 5 - intel version module link created
1..5
```
