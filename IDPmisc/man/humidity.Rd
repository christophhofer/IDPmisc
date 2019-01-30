\name{humidity}
\alias{hr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Converting Humidity Measures into each other
}
\description{
  Converting dew point (of water in air) into vapor pressure or relative humidity and vice versa.
}
\usage{
hr(T, Td, warn = TRUE)
p.ai(Td, warn = TRUE)
p.aw(Td, warn = TRUE)
pw(Td, warn = TRUE)
Td.aw(pw = NULL, T = NULL, hr = NULL, warn = TRUE)
Td(pw = NULL, T = NULL, hr = NULL, warn = TRUE)
Tf.ai(pw = NULL, T = NULL, hr = NULL, warn = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hr}{
    Relative humidity in \eqn{[ \textnormal{\%} ]}.
  }
  \item{T}{
    Temperature of air in \eqn{[ ^\circ \textnormal{C} ]}.
  }
  \item{Td}{
    Dew point of air in \eqn{[ ^\circ \textnormal{C} ]}.
  }
  \item{pw}{
    Vapor pressure in \eqn{[ \textnormal{hPa} ]}.
  }
  \item{warn}{
    When \code{TRUE} and arguments are out of range, a warning is given.
  }
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
%% ~put references to the literature/web site here ~
}
\author{
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
