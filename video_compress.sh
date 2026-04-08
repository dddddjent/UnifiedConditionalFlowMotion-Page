#!/bin/bash

ffmpeg -i original_video.mov -vf scale=1280:-1 -vcodec libx265 -preset veryslow -crf 33 video.mp4
