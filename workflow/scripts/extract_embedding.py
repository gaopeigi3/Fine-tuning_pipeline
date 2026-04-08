import sys

inp = sys.argv[1]
out = sys.argv[2]

print(f"Extract embedding: {inp} → {out}")

with open(out, "w") as f:
    f.write("embedding")

print("Done")