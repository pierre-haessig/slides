# Makefile to send these slides to Zam
SHELL=/usr/bin/env /bin/bash

all:	send

send:	send_zamok
send_zamok:
	CP ./ ${Szam}publis/slides/
