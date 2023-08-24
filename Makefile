gba-patcher: gba-patcher.c
	gcc gba-patcher.c -o gba-patcher

clean:
	rm -f gba-patcher
