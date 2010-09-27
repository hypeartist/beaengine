import sys
import string

lines = []

fd = open ("bad_lines", "r")
for line in fd.readlines ():
    lines.append (int (string.strip (line)));
fd.close ();

fd = open (sys.argv [1], "r");
k = 1;
for line in fd.readlines ():
    if not k in lines:
        print string.strip (line)
    k = k + 1;
