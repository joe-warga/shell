#!/bin/bash
camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 1400
camdline setreg AnalogGain_Ch1 800
camdline setreg AnalogGain_Ch2 800
camdline recN 20 60

camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 2800
camdline setreg AnalogGain_Ch1 401
camdline setreg AnalogGain_Ch2 401
camdline recN 20 60

camdline pause
camdline setreg ExposureMode Timed
camdline setreg ExposureTimeRaw 4200
camdline setreg AnalogGain_Ch1 268
camdline setreg AnalogGain_Ch2 268
camdline recN 20 60