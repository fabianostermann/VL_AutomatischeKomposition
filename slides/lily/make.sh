#!/bin/bash

for ly in *.ly; do
	lilypond  $ly
	rm *.eps *.count *.tex *.texi
	rm *-*.pdf
done
