#!/bin/bash
#cp crack cracknop
python3 -c "import sys; sys.stdout.buffer.write(b'\x90' * 41 )" | dd of=test bs=1 count=41 seek=0 conv=notrunc
