#!/bin/sh
## Example: a typical script without several problems 
for f in *.m3u
do
  grep -qi "hq.*mp3" "$f" \
    && printf "Playlist %s contains a HQ file in mp3 format" "$f"
done
