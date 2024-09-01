import scamp
from scamp import *
import random

TITLE="Aufg.2.b): Markov-Ketten (mit Notenwerten)"
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

# make markov dependencies
hk_dict = {}
for i in range(0,len(hk)-1):
    curr_note = hk[i]
    next_note = hk[i+1]
    if not curr_note in hk_dict:
        hk_dict[curr_note] = []
    hk_dict[curr_note] += [ next_note ]

print(hk_dict)

# init music
s = scamp.Session(tempo=120)
piano = s.new_part("piano")

# main music
s.start_transcribing()

curr_note = random.choice(hk)
for i in range(0,len(hk)):
    piano.play_note(curr_note,1,hk_dur[i])
    next_note = random.choice(hk_dict[curr_note])
    curr_note = next_note

s.stop_transcribing().transpose(12).to_score(time_signature="4/4",title=TITLE,composer=COMPOSER).show()

