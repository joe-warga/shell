#!/bin/bash
for i in $(seq 1 20)
do camdline pause
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 1100
camdline setreg AnalogGain_Ch1 1017
camdline setreg AnalogGain_Ch2 1017
camdline recN 1 10
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 1400
camdline setreg AnalogGain_Ch1 800
camdline setreg AnalogGain_Ch2 800
camdline recN 1 10
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 1750
camdline setreg AnalogGain_Ch1 641
camdline setreg AnalogGain_Ch2 641
camdline recN 1 10
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 2100
camdline setreg AnalogGain_Ch1 534
camdline setreg AnalogGain_Ch2 534
camdline recN 1 10
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 2800
camdline setreg AnalogGain_Ch1 401
camdline setreg AnalogGain_Ch2 401
camdline recN 1 10
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 4200
camdline setreg AnalogGain_Ch1 268
camdline setreg AnalogGain_Ch2 268
camdline recN 1 10
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 5600
camdline setreg AnalogGain_Ch1 201
camdline setreg AnalogGain_Ch2 201
camdline recN 1 10
done 