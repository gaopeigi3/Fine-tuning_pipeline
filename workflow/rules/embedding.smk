rule embedding:
    input:
        lambda wildcards: f"{config['data']['tokenized_dir']}/{wildcards.sample}.dataset"
    output:
        f"{config['data']['embedding_dir']}/{{sample}}.embedding"
    shell:
        """
        python workflow/scripts/extract_embedding.py \
        {input} {output}
        """
