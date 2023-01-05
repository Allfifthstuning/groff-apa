FILES		= apa.tmac apatest.groff
TARGET		= ./build/apatest.pdf 
PRE		=
PROCESSOR	= mmroff 
OPTIONS		= -Tpdf -U -mm   -R

.PHONY	: all preview 

all:
	${PRE} ${PROCESSOR} ${OPTIONS} ${FILES} > ${TARGET}
	killall -HUP mupdf

preview:
	mupdf ${TARGET} &

