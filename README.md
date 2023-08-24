# gba-patcher
Patches the executables of Homebrew Game Boy Advance games so they can run on real hardware.

The point of this utility is to patch Homebrew GBA games so that they can run on
actual GBA hardware.  The Game Boy Advance compiler from the DevkitAdvance
project produces .gba files which run properly on emulators but which fail to
work on the GBA device itself.

The reason for this is that the Game Boy Advance does some checks on the ROM
cartridges to ensure that they are functioning properly.  The main thing is
that the bitmap for the Nintendo logo is actually stored in the game cartridges
themselves.  This gives us a visual clue that the ROM we are trying to load is
broken.  If you see a scrambled Nintendo logo when starting a ROM, this is the
problem.

This program loads the bitmap data for the logo onto the .gba ROM files.  It
also writes other header information including the title of the game.  There is
also a checksum which must be placed at the end of the header or, again, the GBA
will fail to load our games.

Usage:
    1. Download the code
    2. Compile by running the make utility
    3. Patch your .gba file with a command such as:
        `gba-patcher mygame.gba`
    4. Load the modified executable onto your GBA!


