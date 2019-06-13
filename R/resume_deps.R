#' @importFrom htmltools htmlDependency
resume_deps <- function(){
  htmlDependency(
    "resume", "5.0.6",
    src = system.file("startbootstrap-resume-gh-pages/", package = "resume"),
    stylesheet = list.files(
      system.file("startbootstrap-resume-gh-pages/", package = "resume"),
      pattern = "\\.css$", recursive = TRUE
    ),
    script = list.files(
      system.file("startbootstrap-resume-gh-pages/", package = "resume"),
      pattern = "\\.js$", recursive = TRUE
    )
  )
}

#' @importFrom htmltools HTML
resume_head <- function(
  title = "Resume - Start Bootstrap Theme"
){
  HTML(
    sprintf(
      '<head>

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>%s</title>

  <!-- Bootstrap core CSS -->
  <link href="resume-5.0.6/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
  <link href="resume-5.0.6/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resume-5.0.6/css/resume.min.css" rel="stylesheet">

</head>', title
    )
  )
}

#' @importFrom htmltools HTML
resume_scripts <- function(){
  HTML(
    '  <!-- Bootstrap core JavaScript -->
  <script src="resume-5.0.6/vendor/jquery/jquery.min.js"></script>
  <script src="resume-5.0.6/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="resume-5.0.6/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="resume-5.0.6/js/resume.min.js"></script>'
  )
}
