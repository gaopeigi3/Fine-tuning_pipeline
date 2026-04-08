import sys

input_path = sys.argv[1]
output_path = sys.argv[2]

print(f"Tokenizing {input_path} → {output_path}")

# 模拟处理
with open(output_path, "w") as f:
    f.write("tokenized_data")

print("Done.")