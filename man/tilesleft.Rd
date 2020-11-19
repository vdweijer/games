\name{tilesleft}
\alias{tilesleft}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to find out which letters are not on the gameboard yet.
%%  ~~function to do ... ~~
}
\description{
Find out which letters are not on the gameboard yet.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
tilesleft(tiles,language)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tiles}{A string character of length 1 with the letters that have been played
%%     ~~Describe \code{tiles} here~~
}
  \item{language}{One of the languages "dutch", "english" or "swedish". Defaults to "dutch".
%%     ~~Describe \code{language} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A table with tiles. Should not contain negative values.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Me!
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
tilesleft("mephozenebevalgeewaarelueweefntendjew")
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (tiles, language = "dutch")
{
    strsplit(tiles, split = "")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
