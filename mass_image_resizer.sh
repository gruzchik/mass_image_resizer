#!/bin/bash

# SCRIPT NEED imagemagick FOR USING convert ON YOUR PS

# https://guides.wp-bullet.com/batch-resize-images-using-linux-command-line-and-imagemagick/
# https://askubuntu.com/questions/1164/how-to-easily-resize-images-via-command-line

SOURCE_FOLDER='' # directory where we can find our images
FEXT='JPG' # file extention

if [ -z ${SOURCE_FOLDER} ] && [ -d ${SOURCE_FOLDER} ]; then
	cd ${SOURCE_FOLDER}
	mkdir -p ${SOURCE_FOLDER}/resized_photos
	ls ./ | grep ${JPG} | while read line; do convert -resize 60% ${line} other_photos/${line}; done
	# chown -R user:user ${SOURCE_FOLDER}/resized_photos
	
fi
