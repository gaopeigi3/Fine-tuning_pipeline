
rule isp:
    input:
        lambda wildcards: f"{config['data']['embedding_dir']}/{wildcards.sample}.embedding"
    output:
        f"{config['data']['isp_dir']}/{{sample}}/{{gene}}.csv"
    params:
        gene="{gene}"
    shell:
        """
        python workflow/scripts/run_isp.py \
        {input} {output} {params.gene}
        """
