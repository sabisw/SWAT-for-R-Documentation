\name{as.casTable}
\alias{as.casTable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Uploads an R data frame to CAS and returns a CASTable object. The CASTable object is a reference in R (the client) to the in-memory table that is in CAS (the server).

}
\usage{
as.casTable(conn, df, casOut = "")

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{conn}{ A CAS object that represents a connection and session in CAS. }
  \item{df}{ A data.frame object with the data to upload to CAS. }
  \item{casOut}{ An optional character or list. If you specify a string, then the string is used as the in-memory table name. A list can be used to specify properties for the in-memory table as follows:}
 \item{name}{An optional character that specifies the name for the in-memory table. By default, the name of the data frame is used}
\item{caslib}{An optional character that specifies the caslib. Specify this parameter to override the active caslib.}
\item{label }{ An optional character that specifies adescriptive label for the data.}
\item{replace  }{An optional logical. When set to TRUE, you can replace an existing in-memory table with the same name in the same caslib. The default value is FALSE.}
\item{promote  }{An optional logical. When set to TRUE, the in-memory table has global scope and can be available to other CAS sessions (subject to access controls). The default value is FALSE and the in-memory table has session scope so that it is accessible with the session that uploaded the table only. Session-scope tables are ideal for data analysis. Global-scope tables are better suited for reporting. }
\item{replication   }{An optional numeric that specifies the number of redundant copies of in-memory blocks. This parameter applies to distributed servers only. The default value is 1.}
  
}

\value{
CASTable
}

\examples{
## Not run: 
s        <- CAS('cloud.example.com', 5570) 
irisct   <- as.casTable(s, iris)

# Specify a name for the in-memory table. 
mtcarsct <- as.casTable(s, mtcars, casOut="mtcarsct")

# Avoid replacing an existing in-memory table. 
mtcarsct <- as.casTable(s, mtcars, casOut=list(name="mtcarsct", replace=FALSE))

## End(Not run)


