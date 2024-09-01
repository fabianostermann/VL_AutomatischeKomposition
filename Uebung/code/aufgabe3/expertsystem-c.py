import scamp
from scamp import *
import random

TITLE="Aufg.3): Expertensystem (Tonika und Dominante pro Takt)"
COMPOSER="F. Ostermann"

hk = [ 67, 64, 64, 65, 62, 62, 60, 62, 64, 65, 67, 67, 67,
       67, 64, 64, 65, 62, 62, 60, 64, 67, 67, 60,
       62, 62, 62, 62, 62, 64, 65, 64, 64, 64, 64, 64, 65, 67,
       67, 64, 64, 65, 62, 62, 60, 64, 67, 67, 60 ]

hk_dur = [ 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2,
           1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 4,
           1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2,
           1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 4]

# Liste mit pitches pro Schlag (Viertelnote)
hk_notes_per_bar = []
for pitch, dur in zip(hk,hk_dur):
    for i in range(0,dur):
        hk_notes_per_bar += [ pitch ]
for i in range(0,len(hk_notes_per_bar)):
    if (i % 4) == 0:
        hk_notes_per_bar[i] = [ hk_notes_per_bar[i],
                           hk_notes_per_bar[i+1],
                           hk_notes_per_bar[i+2],
                           hk_notes_per_bar[i+3] ]
    else:
        hk_notes_per_bar[i] = None
print("Notes stored in 'per bar' manner:",hk_notes_per_bar)

assert(len(hk) == len(hk_dur))

Cmaj = [48,52,55]
Gmaj = [43,47,50,53]

def decide_chord(notes):
    tendency = 0
    for pitch in notes:
        if pitch in [ 60, 64, 67 ]:
            tendency += 1
        else:
            tendency -= 1
    if tendency >= 0:
        print("decide: ",notes,", tendency:",tendency,"->","Cmaj")
        return Cmaj
    else:
        print("decide: ",notes,", tendency:",tendency,"->","Gmaj")
        return Gmaj

# init music
s = scamp.Session(tempo=120)
flute = s.new_part("flute")
piano = s.new_part("piano")

# main music
s.start_transcribing()

beat = 0
for pitch,dur in zip(hk,hk_dur):
    if (beat % 4) == 0:
        chord = decide_chord(hk_notes_per_bar[beat])
        piano.play_chord(chord, 0.8, 4, blocking=False)
    
    flute.play_note(pitch,1,dur)
    beat += dur
    

s.stop_transcribing().transpose(12).to_score(time_signature="4/4",title=TITLE,composer=COMPOSER).show()

