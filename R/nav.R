#' @importFrom htmltools tags
make_navbar <- function(
  nav
){
  if (is.null(names(nav))){
    names(nav) <- nav
  }
  mapply(function(x, y){
    tags$li(
      class = "nav-item",
      tags$a(
        class = "nav-link js-scroll-trigger",
        href = sprintf("#%s", x),
        y
      )
    )
  },
  names(nav),
  nav,
  SIMPLIFY = FALSE
  )
}

#' A Resume Navbar
#'
#' @param refs a named list with names being the ID and Elements being the text displayed.
#' @param color Color of the sidebar
#' @param image Image to put in the nav.
#'
#' @return An HTML taglist
#' @export
#'
#' @importFrom htmltools tags
resume_navbar <- function(
  refs = c("a" = "A"),
  image = "img/profile.jpg",
  color = "#bd5d38"
){
  tagList(
    tags$style(
      sprintf(".navbar { background-color: %s!important;}", color)
    ),
    tags$nav(class = "navbar navbar-expand-lg navbar-dark bg-primary fixed-top",
             id = "sideNav",
             tags$a(class = "navbar-brand js-scroll-trigger",
                    href = "#page-top",
                    tags$span(class = "d-block d-lg-none",
                              "nav_title"),
                    tags$span(class = "d-none d-lg-block",
                              tags$img(class = "img-fluid img-profile rounded-circle mx-auto mb-2",
                                       src = image,
                                       alt = NA))),
             tags$button(class = "navbar-toggler",
                         type = "button",
                         "data-toggle" = "collapse",
                         "data-target" = "#navbarSupportedContent",
                         "aria-controls" = "navbarSupportedContent",
                         "aria-expanded" = "false",
                         "aria-label" = "Toggle navigation",
                         tags$span(class = "navbar-toggler-icon")),
             tags$div(class = "collapse navbar-collapse",
                      id = "navbarSupportedContent",
                      tags$ul(class = "navbar-nav",
                              make_navbar(
                                refs
                              )
                      )
             )
    )
  )
}
