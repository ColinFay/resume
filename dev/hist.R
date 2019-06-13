dir.create("inst")
download.file("https://github.com/BlackrockDigital/startbootstrap-resume/archive/gh-pages.zip", "inst/resume.zip")
unzip("inst/resume.zip",exdir = "inst")
unlink("inst/resume.zip")

usethis::use_mit_license("Colin Fay")

usethis::use_package("htmltools")

usethis::use_readme_rmd()
usethis::use_news_md()
usethis::use_code_of_conduct()
