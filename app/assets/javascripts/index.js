var getTemplates = function() {
  templates = {
    bus: Handlebars.compile( $("#bus-template").text() ),
    bike: Handlebars.compile( $("#bike-template").text() ),
    metro: Handlebars.compile( $("#metro-template").text() )
  }
}



$(document).on("ready", function(){
  getTemplates()
  

})
