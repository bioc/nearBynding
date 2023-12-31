% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runStereogeneOnCapR.R
\name{runStereogeneOnCapR}
\alias{runStereogeneOnCapR}
\title{runStereogeneOnCapR}
\usage{
runStereogeneOnCapR(
  dir_CapR_bg = ".",
  input_prefix,
  protein_file,
  output_prefix = input_prefix,
  name_config = "config.cfg",
  chrom_size,
  nShuffle = 100,
  get_error = FALSE,
  ...
)
}
\arguments{
\item{dir_CapR_bg}{Directory of lifted-over CapR bedGraph files. Default
current directory}

\item{input_prefix}{Prefix string appended to input files; same as
input_prefix argument in processCapRout. Required}

\item{protein_file}{Name of protein file in bedGraph format. Required}

\item{output_prefix}{Prefix string to be appended to all output files.
Default to be same as input_prefix}

\item{name_config}{Name of output config file. Default config.cfg}

\item{chrom_size}{Name of chromosome size file. File must be in two-column
format without a header where first column is chromosome name and second
column is chromosome length, as from getChainChrSize. Required}

\item{...}{includes all other parameters acceptable to write_config and
write_stereogene}

\item{nShuffle}{Permutations used to estimate error. Default 100.}

\item{get_error}{Whether to calculate the standard error of background
permutations from nShuffle. FALSE will save calculation time. Default FALSE}
}
\value{
generates StereoGene output files, including *.dist files
}
\description{
Writes a configuration file and Stereogene script and runs
Stereogene for all CapR tracks
}
\examples{
runStereogeneOnCapR(protein_file = "chr4and5_liftOver.bedGraph",
                   chrom_size = "chr4and5_3UTR.size",
                   name_config = "chr4and5_3UTR.cfg",
                   input_prefix = "chr4and5_3UTR")

}
