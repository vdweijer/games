\name{bogglewalks}
\alias{bogglewalks}
\docType{data}
\title{
The data is a named list of possible boggle walks inside squares of size 4, 9 and 16.
%%   ~~ data name/kind ... ~~
}
\description{
The possibilities in squares of size 16 are not yet exhausted.
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("bogglewalks")}
\format{
  The format is:
List of 3
 $ 4 : int [1:24, 1:4] 1 1 1 1 1 1 2 2 2 2 ...
 $ 9 : int [1:784, 1:9] 1 1 1 1 1 1 1 1 1 1 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : NULL
 $ 16: num [1:331259, 1:16] 8 16 1 6 10 16 6 11 16 8 ...
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
data(bogglewalks)
apply(bogglewalks[[2]],2,table)
## maybe str(bogglewalks) ; plot(bogglewalks) ...
}
\keyword{datasets}
