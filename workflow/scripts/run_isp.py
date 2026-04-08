
import sys

inp = sys.argv[1]
out = sys.argv[2]
gene = sys.argv[3]

print(f"Run ISP: {gene}")

with open(out, "w") as f:
    f.write(f"{gene},score\n{gene},0.5\n")