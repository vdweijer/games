\name{walklist}
\alias{walklist}
\docType{data}
\title{
A list of possible moves inside squares of size 4, 9 and 16.
}
\description{
The list has three entries, names "16", "9" and "4". Each entry consists of
a list containing 16, 9 and 4 elements. Each of these elements shows for each cell
which the neighbouring cells are. This list is used by the function bogglewalk().
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("walklist")}
\format{
  A data frame with 0 observations on the following 2 variables.
  \describe{
    \item{\code{x}}{a numeric vector}
    \item{\code{y}}{a numeric vector}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(walklist)
## maybe str(walklist) ; plot(walklist) ...
}
\keyword{datasets}
