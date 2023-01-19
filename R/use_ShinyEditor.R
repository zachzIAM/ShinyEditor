#' Loads libraries for this package
#'
#' Set up for the package. Required in UI
#'
#' @return JS Files
#' @export

use_editor <- function() {

  tagList(shiny::singleton(
    shiny::tags$head(
      shiny::tags$script(
        src = "https://cdnjs.cloudflare.com/ajax/libs/tinymce/5.10.7/tinymce.min.js",
        referrerpolicy = "origin"
      ),
      shiny::tags$script(
        "Shiny.addCustomMessageHandler('HTMLText', function(data) {
       eval(data.jscode)
      });"
      ),
      shiny::tags$script("Shiny.addCustomMessageHandler('UpdateshinyEditor', function(data) {
        tinyMCE.get(data.id).setContent(data.content);
        $('#'+data.id).trigger('change');});")
    )
  ))

}
