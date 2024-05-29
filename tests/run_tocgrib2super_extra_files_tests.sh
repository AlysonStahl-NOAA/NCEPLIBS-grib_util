#!/bin/sh
# This is a test script for the NCEPLIBS-grib_util project. This tests
# the tocgrib2super utility with extra files downloaded from FTP.
#
# Ed Hartnett, 5/28/24

set -e
echo ""
echo "*** Running tocgrib2super extra tests"

echo "*** Running tocgrib2super with input/output defined, but one missing field. It will fail."
export FORT11="data/rrfs.t12z.prslevfaa.f010.na3km.grib2"
export FORT51=out.grib2
../src/tocgrib2super/tocgrib2super < data/tocgrib2_bad.nml && exit 1

echo "*** Running tocgrib2 with input/output defined. It will succeed."
export FORT11="data/rrfs.t12z.prslevfaa.f010.na3km.grib2"
export FORT51=out.grib2
../src/tocgrib2super/tocgrib2super < data/tocgrib2.nml

echo "*** SUCCESS!"
exit 0