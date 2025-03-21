#!/bin/bash

# Array of video IDs
VIDEO_IDS=("VIDEO_ID_1" "VIDEO_ID_2" "VIDEO_ID_3" "VIDEO_ID_4")

# Loop through each video ID and download it
for VIDEO_ID in "${VIDEO_IDS[@]}"; do
    echo "Downloading: https://www.youtube.com/watch?v=$VIDEO_ID"
    yt-dlp --cookies cookies.txt "https://www.youtube.com/watch?v=$VIDEO_ID"
    echo "Download completed for: $VIDEO_ID"
done
