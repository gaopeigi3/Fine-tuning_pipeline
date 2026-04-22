
from utils.geneformer import TranscriptomeTokenizer
import sys
import os
input_path = sys.argv[1]
output_path = sys.argv[2]
output_dir = os.path.dirname(output_path)
custom_attrs = {
    "n_counts": "n_counts",
    "cell_type": 'cell_type',
    "disease": "disease",
    "individual": "individual",
    "mutation": "mutation",
    "cell_id": "cell_id",
    "treat": "treat"
}
print(f"Tokenizing {input_path} → {output_path}")


tk = TranscriptomeTokenizer(
  custom_attr_name_dict=custom_attrs,
  chunk_size=512, # can adjust based on memory available
  nproc=8,
  model_version="V1" # default is V2, here set to V1 model to fit into Colab 40G GPU resources
)

tk.tokenize_data(
    data_directory=input_path, #"./data/input_data",
    output_directory=output_path, #"./data/tokenized",
    output_prefix="cm_tokenized",
    file_format="h5ad"
)

print("Done.")