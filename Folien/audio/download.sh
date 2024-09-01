#!/bin/bash

yt-dlp https://www.youtube.com/watch?v=tippo8S5YlI -o Olivier_Messiaen-Mode_de_valeurs_et_d_intensites

wget https://upload.wikimedia.org/wikipedia/commons/b/b1/Hello_World_audio.flac
ffmpeg -i Hello_World_audio.flac Iamus_Hello_World.mp3
rm Hello_World_audio.flac

yt-dlp -x https://www.youtube.com/watch?v=n0njBFLQSk8 -o Lejaren_Hiller_-_Illiac_Suite_for_String_Quartet_1of4 --audio-format mp3
yt-dlp -x https://www.youtube.com/watch?v=MrN0pOnA1x4 -o Lejaren_Hiller_-_Illiac_Suite_for_String_Quartet_2of4 --audio-format mp3
yt-dlp -x https://www.youtube.com/watch?v=cuq4smO_4Js -o Lejaren_Hiller_-_Illiac_Suite_for_String_Quartet_3of4 --audio-format mp3
yt-dlp -x https://www.youtube.com/watch?v=QyqiSbbwHIs -o Lejaren_Hiller_-_Illiac_Suite_for_String_Quartet_4of4 --audio-format mp3

yt-dlp -x https://www.youtube.com/watch?v=KV3V3c8mqGs -o Gary_Lee_Nelson_-_Fractal_Mountains --audio-format mp3
