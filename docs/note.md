写作顺序： snakefile——workflow.rules——workflow.scripts

想 debug 中间步骤：
临时改：
rule all:
    input:
        expand("data/embedding/{sample}.embedding", sample=SAMPLES)
👉 只跑到 embedding

snakemake -j 4
👉 这个 4 就是同时允许跑的 job 数（并行数）
你可以开始观察：
👉 哪个步骤慢
👉 然后：
拆 rule
增加并行