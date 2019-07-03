library(shiny)
library(resume)

unui <- function(id){
  ns <- NS(id)
  tagList(
    h4('about'),
    plotOutput(ns("about"))
  )
}

un <- function(input, output, session){
  ns <- session$ns

  output$about <- renderPlot({
    plot(iris)
  })
}

deuxui <- function(id){
  ns <- NS(id)
  tagList(
    h4('experience'),
    plotOutput(ns("experience"))
  )
}

deux <- function(input, output, session){
  ns <- session$ns
  output$experience <- renderPlot({
    plot(mtcars)
  })
}

troisui <- function(id){
  ns <- NS(id)
  tagList(
    h4('education'),
    plotOutput("education")
  )
}

trois <- function(input, output, session){
  ns <- session$ns

  output$education <- renderPlot({
    plot(iris)
  })

}



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
      image = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/198/sign-of-the-horns_1f918.png"
    ),
    body = resume_body(
      # About
      resume_section(
        id = "about",
        unui("unui")
      ),
      # experience
      resume_section(
        id = "experience",
        deuxui("deuxui")
      ),
      # education
      resume_section(
        id = "education",
        troisui("troisui")
      )
    )
  )
}

server <- function(input, output, session){

  callModule(un, "unui")

  callModule(deux, "deuxui")

  callModule(trois, "troisui")

}

shinyApp(ui, server)
