# This script should be run from the testpackage top-level directory

library("DESeq2")

midgut_tsv <- read.table("data-raw/midgut_metadata.tsv", header=TRUE)
midgut <- DESeqDataSetFromHTSeqCount(midgut_tsv, "data-raw/data/", design = ~condition)
midgut <- DESeq(midgut)
usethis::use_data(midgut, overwrite = TRUE)
usethis::use_data(midgut_tsv, overwrite = TRUE)
