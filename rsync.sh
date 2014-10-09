#!/bin/bash
clear
echo "to be run from ubuntu virtual machine on Joe Warga's Dell Windows8 laptop" 

i="/mnt/hgfs/joewa_000/Dropbox/books/Space/Competition/"
j="/mnt/hgfs/P/Optics/Competition/"
rsync -rvc --progress $j $i
rsync -rvc --progress $i $j
# it is critical to use the last '/' in the folder name, or weirdness happens
# rsync -rv --progress here/ there/
# -r = recursive
# -v = verbose
# c = checksum instead of newest, saves time and you can get into a newest loop, where you never actually update the file, though 
# --progress


i="/mnt/hgfs/D/Zemax/file_server_Zemax_Files/"
j="/mnt/hgfs/P/Optics/ZemaxFiles/"
rsync -rv --progress $j $i
rsync -rv --progress $i $j

# i=""
# j=""
# rsync -rvc --progress $j $i
# rsync -rvc --progress $i $j

# i=""
# j=""
# rsync -rvc --progress $j $i
# rsync -rvc --progress $i $j

# i=""
# j=""
# rsync -rvc --progress $j $i
# rsync -rvc --progress $i $j

# i=""
# j=""
# rsync -rvc --progress $j $i
# rsync -rvc --progress $i $j