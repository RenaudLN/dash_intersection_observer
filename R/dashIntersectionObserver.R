# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dashIntersectionObserver <- function(children=NULL, id=NULL, className=NULL, delay=NULL, inView=NULL, inViewCount=NULL, initialInView=NULL, rootMargin=NULL, style=NULL, threshold=NULL, triggerOnce=NULL) {
    
    props <- list(children=children, id=id, className=className, delay=delay, inView=inView, inViewCount=inViewCount, initialInView=initialInView, rootMargin=rootMargin, style=style, threshold=threshold, triggerOnce=triggerOnce)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashIntersectionObserver',
        namespace = 'dash_intersection_observer',
        propNames = c('children', 'id', 'className', 'delay', 'inView', 'inViewCount', 'initialInView', 'rootMargin', 'style', 'threshold', 'triggerOnce'),
        package = 'dashIntersectionObserver'
        )

    structure(component, class = c('dash_component', 'list'))
}
