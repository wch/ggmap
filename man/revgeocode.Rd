\name{revgeocode}
\alias{revgeocode}
\title{Reverse geocode}
\usage{
  revgeocode(location,
    output = c("address", "more", "all"),
    messaging = FALSE, sensor = FALSE,
    override_limit = FALSE)
}
\arguments{
  \item{location}{a location in longitude/latitude format}

  \item{output}{amount of output}

  \item{messaging}{turn messaging on/off}

  \item{sensor}{whether or not the geocoding request comes
  from a device with a location sensor}

  \item{override_limit}{override the current query count
  (.GoogleGeocodeQueryCount)}
}
\value{
  depends (at least an address)
}
\description{
  reverse geocodes a longitude/latitude location using
  Google Maps.
}
\details{
  note that the google maps api limits to 2500 queries a
  day.
}
\examples{
\dontrun{

( gc <- as.numeric(geocode('Baylor University')) )
revgeocode(gc)
revgeocode(gc, output = 'more')
revgeocode(gc, output = 'all')
geocodeQueryCheck()

}
}
\author{
  David Kahle \email{david.kahle@gmail.com}
}
\seealso{
  \url{http://code.google.com/apis/maps/documentation/geocoding/}
}

