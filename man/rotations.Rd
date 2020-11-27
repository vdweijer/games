\name{rotations}
\alias{rotations}
\docType{data}
\title{Rotations of a boggle square to reduce the number of walks.
%%   ~~ data name/kind ... ~~
}
\description{
Depending on the size of the square, the total number of walks may be reduced, by
meas of rotation. The dataset is a list of rotations for squares of size
4, 9 and 16. For squares of size 4 and 9, three rotations are possible, for squares
of size 16, 7 rotations are possible. For the sake of completeness, zero rotations
(labeled T0) are also included in the list.
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("rotations")}
\format{
  A list with three entries
  \describe{
    \item{\code{x}}{rotations for a square of size 4.}
    \item{\code{y}}{rotations for a square of size 9.}
    \item{\code{y}}{rotations for a square of size 16.}
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
data(rotations)
}
\keyword{datasets}
