\name{humidity}
\alias{hr}
\alias{p.ai}
\alias{p.aw}
\alias{pw}
\alias{Td.aw}
\alias{Td}
\alias{Tf.ai}
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
    Relative humidity in \eqn{[\textnormal{\%}]}.
  }
  \item{T}{
    Temperature of air in \eqn{[^\circ \textnormal{C}]}.
  }
  \item{Td}{
    Dew point of air in \eqn{[^\circ \textnormal{C}]}.
  }
  \item{pw}{
    Vapour pressure in \eqn{[\textnormal{hPa}]}.
  }
  \item{warn}{
    When \code{TRUE} and arguments are out of range, a warning is thrown.
  }
}
\details{

}
\value{
  \code{hr} transforms dew point at a certain temperature into
  relative humidity. \code{p.ai} transforms dew point into vapour
  pressure above liquid water. \code{p.aw} transforms dew point into vapour
  pressure above ice. \code{pw} transforms dew point into vapour
  pressure. \code{Td.aw} transforms vapour pressure or relative humidity and
  temperature into dew point above water. \code{Td.ai} transforms vapour pressure or relative humidity and
  temperature into dew point above ice.
}
\references{
 Guide to Meteorological Instruments and Methods of Observation, WMO,
 WMO-No. 8, Seventh edition, 2008, updated 2010, 1.4-29 Annex 4.B
}
\author{
Rene Locher
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
 pw(Td = c(-65, -45, 0, 30, 60))
 Td(pw = pw(c(-20, 0, 20)))

 hr(T = c(20, 30, 40), Td = c(0, 20, 30))
 ## [1] 26.20257 55.09561 57.46519
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ arith }% use one of  RShowDoc("KEYWORDS")

