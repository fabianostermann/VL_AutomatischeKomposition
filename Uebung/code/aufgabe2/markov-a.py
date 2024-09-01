import scamp
from scamp import *
import random

TITLE="Aufg.2.a): Markov-Ketten"
COMPOSER="F. Ostermann"

hk = [ 67, 64, 64, 65, 62, 62, 60, 62, 64, 65, 67, 67, 67,
       67, 64, 64, 65, 62, 62, 60, 64, 67, 67, 60,
       62, 62, 62, 62, 62, 64, 65, 64, 64, 64, 64, 64, 65, 67,
       67, 64, 64, 65, 62, 62, 60, 64, 67, 67, 60 ]

# init music
s = scamp.Session(tempo=120)
piano = s.new_part("piano")

# main music
s.start_transcribing()

for i in range(0,len(hk)):
    note = random.choice(hk)
    piano.play_note(note,1,1)

s.stop_transcribing().transpose(12).to_score(time_signature="4/4",title=TITLE,composer=COMPOSER).show()

