\name{CAS Actions}
\alias{CAS Actions}

\title{CAS Actions}

\description{
When you connect to SAS Cloud Analytic Services (CAS), the SWAT package software generates an R function for each CAS action that is available on the server.

}
\usage{
cas.actionSet.action(CASorCASTab, parameters...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{CASorCASTab}{An instance of a CAS object that represents a connection and CAS session, or an instance of a CASTable.}
  \item{parameters}{Actions accept a series of parameters in key=value pair format. The parameters are action specific. See the product documentation.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
For a list of available CAS actions see: \href{https://documentation.sas.com/?cdcId=pgmcdc&cdcVersion=8.11&docsetId=allprodsactions&docsetTarget=titlepage.htm}{Actions and Action Sets by Name and Product}.

For the latest product documentation for SAS Viya, see: \href{http://support.sas.com/documentation/onlinedoc/viya/index.html}{Documentation for SAS Viya}.
}

\examples{
cas.table.tableInfo(irisct)
cas.simple.summary(irisct)}
