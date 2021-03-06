% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotALL.R
\name{plotALL}
\alias{plotALL}
\title{Calculate and combine hazard ratio, pvalue, threshold and
area-between-curve data and plot}
\usage{
plotALL(measure, srv, time = "Time", event = "Event", bs_dfr = c(),
  measure_name = "measure", multiv = NULL, title = "")
}
\arguments{
\item{measure}{A continuous variable used to order survival data. Samples
must be ordered exactly as in srv}

\item{srv}{A dataframe that contains at least two columns, detailing event 
and time to event information. 
Samples must be ordered exactly as in measure}

\item{time}{Column name in srv containing time to event information. Must 
not contain NAs}

\item{event}{Column name in srv containing event information coded as 0 (no
event) and 1 (event). Must not contain NAs}

\item{bs_dfr}{A matrix of bootstrapped hazard ratio computations as ordered
by a random measurement vector. Typically consisting of 5-10,000 repeat 
samplings}

\item{measure_name}{A descriptive name for the measure used, for example
a gene ID}

\item{multiv}{Univariate analysis is performed by default, however a character
string specifying a column contained in srv (or a vector of strings specifying
multiple columns) detailing additional variables can be included}

\item{title}{Plot title; as a character string}
}
\value{
Using survival, measure, hazard ratio, pvalue, log10 pvalue, 
threshold and threshold residual information, plot the measure-event 
relationship
}
\description{
Calculate and combine hazard ratio, pvalue, threshold and
area-between-curve data and plot
}
\examples{
data(nki_subset)
library(Biobase)

gene_vec <- exprs(nki_subset)["NM_004448", ] #ERBB2 gene id

plotALL(measure = gene_vec, 
    srv = pData(nki_subset), 
    time = "t.dmfs", 
    event = "e.dmfs", 
    title = "ERBB2 Example") 

}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 