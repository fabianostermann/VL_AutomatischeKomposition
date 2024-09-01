import scamp
from scamp import *

# init music
s = scamp.Session(tempo=120)
piano = s.new_part("piano")

# main music
s.start_transcribing()

### Hier eigenen Generierungscode einfügen: ###
for i in [60,62,64,65,67]:
    piano.play_note(i,0.5,1)
################################################
    
s.stop_transcribing().to_score(time_signature="4/4").show()
