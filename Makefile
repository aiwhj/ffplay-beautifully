ffplay:ffplay.c cmdutils.c
	cc ffplay.c cmdutils.c -lSDL2 -lavformat -lavcodec -lavutil -lswscale -lswresample -lavdevice -lavfilter -lm -o ffplay

clean:
	rm ffplay

