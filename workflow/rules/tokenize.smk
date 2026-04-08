
import pandas as pd

samples_df = pd.read_csv("config/samples.tsv", sep="\t")
SAMPLE_DICT = dict(zip(samples_df["sample"], samples_df["path"]))

rule tokenize:
    input:
        lambda wildcards: SAMPLE_DICT[wildcards.sample]
    output:
        f"{config['data']['tokenized_dir']}/{{sample}}.dataset"
    shell:
        """
        python workflow/scripts/tokenize.py \
        {input} {output}
        """

