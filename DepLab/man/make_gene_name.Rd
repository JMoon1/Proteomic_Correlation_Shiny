% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_wrangling.R
\name{make_gene_name}
\alias{make_gene_name}
\title{Generate unique, yet easily recognizable gene names}
\usage{
make_gene_name(id.info)
}
\arguments{
\item{id.info}{data.frame with 2 columns: "id" and "gene_symbol"}
}
\value{
data.frame with the exact same 2 columns, except that gene_symbol will
now contain: "UniProtID (gene name)"
}
\description{
To have a compromise for a unique protein/gene identifier and
an easily recognizable name, we're merging the unique UniProt ID with the
non-unique gene name (the one that is indicated as "primary" gene name by
UniProt).
If the gene_symbol string is empty, it will be replaced with the UniProt ID.
}
\seealso{
\code{\link{read_IDinfo}}
}
