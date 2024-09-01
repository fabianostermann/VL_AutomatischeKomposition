import scamp
from scamp import *
import random

TITLE="Aufg.3): Expertensystem Setup (Parallel Harmony)"
COMPOSER="F. Ostermann"

hk = [ 67, 64, 64, 65, 62, 62, 60, 62, 64, 65, 67, 67, 67,
       67, 64, 64, 65, 62, 62, 60, 64, 67, 67, 60,
       62, 62, 62, 62, 62, 64, 65, 64, 64, 64, 64, 64, 65, 67,
       67, 64, 64, 65, 62, 62, 60, 64, 67, 67, 60 ]

hk_dur = [ 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2,
           1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 4,
           1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2,
           1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 4]

assert(len(hk) == len(hk_dur))

# init music
s = scamp.Session(tempo=120)
piano = s.new_part("piano")

# main music
s.start_transcribing()

for pitch,dur in zip(hk,hk_dur):
    notes = [pitch]
    for i in range(0,3):
        notes += [ notes[-1]-5 ]
    piano.play_chord(notes,1,dur)
    

s.stop_transcribing().transpose(12).to_score(time_signature="4/4",title=TITLE,composer=COMPOSER).show()

