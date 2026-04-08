import sys

inputs = sys.argv[1:-1]
output = sys.argv[-1]

with open(output, "w") as out:
    out.write("gene,score\n")
    for f in inputs:
        with open(f) as inp:
            next(inp)
            for line in inp:
                out.write(line)