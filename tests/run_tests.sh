#!/bin/sh
# This is a test script for the NCEPLIBS-grib_util project.
#
# Ed Hartnett, 12/25/21

set -e
echo ""


echo "*** Running cnvgrib test"

FAIL=0

# Convert test file to GRIB1.
../src/cnvgrib/cnvgrib -g21 gdaswave.t00z.wcoast.0p16.f000.grib2 gdaswave.t00z.wcoast.0p16.f000.grib1

# Generate an inventory of the GRIB1 file.
../src/wgrib/wgrib gdaswave.t00z.wcoast.0p16.f000.grib1 

# Check against expected output.
#cmp gdaswave.t00z.wcoast.0p16.f000.grib1.inventory.txt gdaswave_grib1_inventory.txt 

echo "*** SUCCESS!"
exit $FAIL
