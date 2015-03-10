var getTemplates = function() {
  templates = {
    bus: Handlebars.compile( $("#bus-template").text() ),
    bike: Handlebars.compile( $("#bike-template").text() ),
    metro: Handlebars.compile( $("#metro-template").text() ),
    selectbus: Handlebars.compile($("#select-bus-template").text() ),
    selectbike: Handlebars.compile($("#select-bike-template").text() ),
    selectmetro: Handlebars.compile($("#select-metro-template").text() )
  }
}



$(document).on("ready", function(){
  getTemplates()
  

})
