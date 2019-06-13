
<!-- README.md is generated from README.Rmd. Please edit that file -->

# resume

<!-- badges: start -->

<!-- badges: end -->

{resume} provides an implementation of the [Bootstrap Resume
Template](https://github.com/BlackrockDigital/startbootstrap-resume) for
‘Shiny’.

## Installation

You can install the released version of resume from GitHub with:

``` r
remotes::install_github("ColinFay/resume")
```

## Using {resume}

A `resume_page` takes 3 elements:

  - `app_title`: title of the application
  - `nav`: a navigation pane, created by `resume_navbar`. This function
    has two arguments: `refs`, a named list of characters, with names
    being ID of sections, and elements being text displayed, `image`,
    which is a link to an image to display on top of the app.
  - `body`: the body of the app, built with `resume_body` &
    `resume_section`. For each element in `resume_navbar/refs`, there
    should be one `resume_section`. The link between the two is made
    through the ID (name of `resume_navbar/refs` ==
    `resume_section/id`).

## Example

Example app:

``` r
library(shiny)
library(resume)
ui <- function(request){
  resume_page(
    app_title = "plop",
    nav = resume_navbar(
      refs = c(
        "about" = "About",
        "experience" = "Experience",
        "education" = "Education",
        "interests" = "Interests",
        "awards" = "Awards"
      ),
      image = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/sign-of-the-horns_1f918.png", 
      color = "pink"
    ),
    body = resume_body(
      # About
      resume_section(
        id = "about",
        h4('about'),
        plotOutput("about")
      ),
      # experience
      resume_section(
        id = "experience",
        h4('experience'),
        plotOutput("experience")
      ),
      # education
      resume_section(
        id = "education",
        h4('education'),
        plotOutput("education")
      ),
      # interests
      resume_section(
        id = "interests",
        h4('interests'),
        plotOutput("interests")
      ),
      # awards
      resume_section(
        id = "awards",
        h4('awards'),
        plotOutput("awards")
      )
    )
  )
}

server <- function(input, output, session){
  output$about <- renderPlot({
    plot(iris)
  })
  output$experience <- renderPlot({
    plot(mtcars)
  })
  output$education <- renderPlot({
    plot(airquality)
  })
  output$interests <- renderPlot({
    plot(AirPassengers)
  })
  output$awards <- renderPlot({
     plot(anscombe)
  })
}

shinyApp(ui, server)
```

![](readme-figs/example.gif)

Please note that the ‘resume’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
