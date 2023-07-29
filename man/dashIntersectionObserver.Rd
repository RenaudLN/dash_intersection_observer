% Auto-generated: do not edit by hand
\name{dashIntersectionObserver}

\alias{dashIntersectionObserver}

\title{DashIntersectionObserver component}

\description{
Component description
}

\usage{
dashIntersectionObserver(children=NULL, id=NULL, className=NULL, delay=NULL,
inView=NULL, inViewCount=NULL, initialInView=NULL,
rootMargin=NULL, style=NULL, threshold=NULL,
triggerOnce=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. }

\item{id}{Character. Unique ID to identify this component in Dash callbacks.}

\item{className}{Character. CSS class of the wrapping div.}

\item{delay}{Numeric. Minimum delay between notifications, in milliseconds}

\item{inView}{Logical. Whether the component is in the viewport (READONLY).}

\item{inViewCount}{Numeric. Number of times the component has been in the viewport.}

\item{initialInView}{Logical. Set the initial value of the inView boolean.}

\item{rootMargin}{Character. Margin around the root. Can have values similar to the CSS margin property.}

\item{style}{Logical | numeric | character | named list | unnamed list. Style of the wrapping div.}

\item{threshold}{Numeric. Number between 0 and 1 indicating the percentage that should be visible before triggering.}

\item{triggerOnce}{Logical. Only trigger the inView callback once if true.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

