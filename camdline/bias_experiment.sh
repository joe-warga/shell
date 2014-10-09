#!/bin/bash
camdline setreg ExposureMode Timed
camdline setreg AnalogGain_Ch1 800
camdline setreg AnalogGain_Ch2 800
for i in $(seq 1 2);
do camdline pause
camdline setreg ExposureTimeRaw 10
camdline recN 1 10
camdline pause
camdline setreg ExposureTimeRaw 1400
camdline recN 1 10
camdline pause
done 
