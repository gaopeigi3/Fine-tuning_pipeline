
import pandas as pd

configfile: "config/config.yaml"

# 读取 samples
samples_df = pd.read_csv("config/samples.tsv", sep="\t")
SAMPLES = samples_df["sample"].tolist()
# genes
with open("config/genes.txt") as f:
    GENES = [line.strip() for line in f]

include: "workflow/rules/tokenize.smk"
include: "workflow/rules/embedding.smk"
include: "workflow/rules/isp.smk"
include: "workflow/rules/aggregate.smk"


rule all:
    input:
        expand("results/summary/{sample}.csv", sample=SAMPLES)