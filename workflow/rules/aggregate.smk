rule aggregate:
    input:
        expand("results/isp/{{sample}}/{gene}.csv", gene=GENES)
    output:
        "results/summary/{sample}.csv"
    shell:
        """
        python workflow/scripts/summarize_isp.py \
        {input} {output}
        """