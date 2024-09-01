import scamp
from scamp import *

TITLE="Aufg.1: Lindenmayer-System"
COMPOSER="F. Ostermann"

# make L-system
p = { "a": "b", "b": "ab" }
omega = "a"
lsys = [ omega ]
n = 5

def step(word, p):
    nextword = ""
    for char in word:
        nextword += p[char]
    return nextword

for n in range(0,n):
    lsys += [ step(lsys[-1], p) ]

print(lsys)
music = lsys[-1]

# init music
s = scamp.Session(tempo=120)
piano = s.new_part("piano")

# main music
s.start_transcribing()

for symbol in music:
    if symbol == "a":
        piano.play_note(57,1,1)
    elif symbol == "b":
        piano.play_note(59,1,1)
    else:
        print("Unknown symbol:",symbol)

s.stop_transcribing().transpose(12).to_score(time_signature="4/4",title=TITLE,composer=COMPOSER).show()

