\name{as.casDataFrame}
\alias{as.casDataFrame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
as.casDataFrame
}
\description{
Converts an R Data Frame to a CAS Data Frame. This function is rarely used for programming. It is used by the package to associate CAS metadata with tabular data that is returned by CAS actions.


}
\usage{
as.casDataFrame(df, name = "", label = "", title = "", attrs = list(), 
    col.labels = "", col.formats = "", col.attrs = list(), 
    col.sizes = list(), col.types = "", col.widths = 0
}

\value{
casDataFrame {4}
}

\examples{
## Not run: 
   cdf2 = as.casDataFrame(df3[1:4]) 
   cdf = as.casDataFrame(iris)
## End(Not run)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~rswat }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~as.casDataFrame }% __ONLY ONE__ keyword per line
