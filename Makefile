PROG=loop-the-loops
TIC=/Applications/tic80.app/Contents/MacOS/tic80
TICOPTS=--skip --fs=.
PAK=pakettic
TICTOOL=tic-tool
ALG=dlas
LEVEL=3
TARGET=128
STEPS=10000
CHUNKS=CODE,DEFAULT
PAKOPTS=-z$(LEVEL) -a$(ALG) -s$(STEPS) -p -c$(CHUNKS) --target-size=$(TARGET)

dist: $(PROG).tic

run:
	$(TIC) $(TICOPTS) $(PROG).lua

run-dist: dist
	$(TIC) $(TICOPTS) $(PROG).tic

analyze:
	$(TICTOOL) analyze $(PROG).tic

$(PROG).tic: $(PROG).lua
	$(PAK) $(PAKOPTS) $< -o $@

clean:
	$(RM) $(PROG).tic

.PHONY: run dist run-dist clean
