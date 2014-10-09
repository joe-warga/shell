#!/bin/bash
# script should live on ground station with the deb
# shell script puts needed autofocus stuff on sats
scp focusingstuff_20140827_i386.deb sat$1
ssh -o StrictHostKeyChecking=no cosmogia@sat$1.cmo 'sudo dpkg -i focusingstuff_20140827_i386.deb'
ssh -o StrictHostKeyChecking=no cosmogia@sat$1.cmo 'sudo ldconfig'
