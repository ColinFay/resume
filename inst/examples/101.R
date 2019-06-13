library(shiny)
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
      nav_title = "plop",
      image = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/sign-of-the-horns_1f918.png"
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
    plot(iris)
  })
  output$education <- renderPlot({
    plot(iris)
  })
  output$interests <- renderPlot({
    plot(iris)
  })
  output$awards <- renderPlot({
    plot(iris)
  })
}

shinyApp(ui, server)
