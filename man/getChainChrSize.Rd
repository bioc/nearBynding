% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getChainChrSize.R
\name{getChainChrSize}
\alias{getChainChrSize}
\title{getChainChrSize}
\usage{
getChainChrSize(chain, out_chr)
}
\arguments{
\item{chain}{The name of the chain file for which chromosome sizes should be
determined and output; a string. Required.}

\item{out_chr}{Name of the chromosome names and lengths table file; a string.
Required.}
}
\value{
writes a two-column tab-delineated file without a header containing
chromosome names and lengths for a given chain file
}
\description{
Output a table of mapped chromosome names and lengths from a
chain file.
}
\examples{
## first, make the chain file
load(system.file("extdata/transcript_list.Rda", package="nearBynding"))
gtf<-system.file("extdata/Homo_sapiens.GRCh38.chr4&5.gtf",
                package="nearBynding")
GenomeMappingToChainFile(genome_gtf = gtf,
                        out_chain_name = "test.chain",
                        RNA_fragment = "three_prime_utr",
                        transcript_list = transcript_list,
                        alignment = "hg38")

getChainChrSize(chain = "test.chain",
               out_chr = "chr4and5_3UTR.size")

}
