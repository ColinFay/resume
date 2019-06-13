#' Resume page
#'
#' A Shinny App with the Bootstrap Resume Template
#'
#' @param app_title Title of the App
#' @param nav A navbar, constructed with \code{resume_navbar}
#' @param body A body, constructed with \code{resume_body} & \code{resume_sections}
#' @importFrom htmltools tagList tags
#' @return An HTML taglist
#' @export
resume_page <- function(
  app_title,
  nav,
  body
){
  tagList(
    tags$html(
      resume_deps(),
      resume_head(title = app_title),
      tags$body(
        id="page-top",
        nav,
        body
      )
    )
  )
}

#' Body of the page
#'
#' @param ... A series of \code{resume_section}
#'
#' @return An HTML taglist
#' @export
#' @importFrom htmltools tagList tags
resume_body <- function(...){
  tagList(
    tags$div(
      class="container-fluid p-0",
      ...,
      resume_scripts()
    )
  )
}

#' A section in the page
#'
#' @param id ID of the sections, should reflect the \code{resume_navbar} structure
#' @param ... elements to put inside the section
#'
#' @return An HTML taglist
#' @export
#' @importFrom htmltools tagList tags
resume_section <- function(id, ...){
  tagList(
    tags$section(
      class="resume-section p-3 p-lg-5 d-flex align-items-center",
      id = id,
      tags$div(
        class="w-100",
        ...
      )
    )
  )
}
