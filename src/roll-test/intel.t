#!/usr/bin/perl -w
# intel roll installation test.  Usage:
# intel.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my $isInstalled = -d '/opt/intel';
my $output;

my $TESTFILE = 'tmpintel';

open(OUT, ">$TESTFILE.c");
print OUT <<END;
#include <stdio.h>
int main(char **args) {
  printf("Hello world\\n");
  return 0;
}
END
open(OUT, ">$TESTFILE.f");
print OUT <<END;
      PROGRAM HELLO
      PRINT*, 'Hello world!'
      END
END
close(OUT);

# intel-compilers-common.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'intel compilers installed');
} else {
  ok(! $isInstalled, 'intel compilers not installed');
}
SKIP: {

  skip 'intel compilers not installed', 10 if ! $isInstalled;
  my $modulesInstalled = -f '/etc/profile.d/modules.sh';
  my $setup = $modulesInstalled ?
              ". /etc/profile.d/modules.sh; module load intel" :
              'echo > /dev/null'; # noop

  $output = `$setup; icc -o $TESTFILE $TESTFILE.c 2>&1`;
  ok($? == 0, 'intel C compiler works');
  $output = `$setup; ./$TESTFILE`;
  ok($? == 0, 'compiled C program runs');
  like($output, qr/Hello world/, 'compile C program correct output');

  $output = `$setup; ifort -o $TESTFILE $TESTFILE.f 2>&1`;
  ok($? == 0, 'intel FORTRAN compiler works');
  $output = `$setup; ./$TESTFILE`;
  ok($? == 0, 'compiled FORTRAN program runs');
  like($output, qr/Hello world/, 'compile FORTRAN program correct output');

  $output = `$setup; man icc 2>&1`;
  ok($output =~ /Intel/, 'man works for intel');
  
  skip 'modules not installed', 3 if ! $modulesInstalled;
  `/bin/ls /opt/modulefiles/compilers/intel/[0-9.]* 2>&1`;
  ok($? == 0, 'intel module installed');
  `/bin/ls /opt/modulefiles/compilers/intel/.version.[0-9.]* 2>&1`;
  ok($? == 0, 'intel version module installed');
  ok(-l '/opt/modulefiles/compilers/intel/.version',
     'intel version module link created');

}

`rm -f $TESTFILE*`;
