#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution2/.autopilot/db/a.g.bc ${1+"$@"}
