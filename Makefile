CC ?= gcc

.PHONY: all clean

all: out/main

clean:
	rm -rf out

out/main: src/main.c | out
	$(CC) $< -o $@


out:
	mkdir out
