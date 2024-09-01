import scamp
from scamp import *

TITLE="Aufg.1: Lindenmayer-System (Experiment)"
COMPOSER="F. Ostermann"

# make L-system
p = { "a": "c", "b": "ab", "c": "ba" }
omega = "b"
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

# music phrase definitions
def phraseA():
    piano.play_note(57,1,1)
    piano.play_note(55,1,0.5)
    piano.play_note(57,1,0.5)

def phraseB():
    piano.play_note(62,1,0.25)
    piano.play_note(60,1,0.25)
    piano.play_note(59,1,1)

def phraseC():
    piano.play_note(67,1,0.25)
    piano.play_note(64,1,0.25)
    piano.play_note(62,1,0.25)
    piano.play_note(60,1,0.25)

# main music
s.start_transcribing()

for symbol in music:
    if symbol == "a":
        phraseA()
    elif symbol == "b":
        phraseB()
    elif symbol == "c":
        phraseC()
    else:
        print("Unknown symbol:",symbol)

s.stop_transcribing().transpose(12).to_score(time_signature="4/4",title=TITLE,composer=COMPOSER).show()

