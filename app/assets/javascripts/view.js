var switchUI = function(){
  $("#selected").toggle()
  $("#unselected").toggle()
}
$("#Favorites").on("click", function(){
  switchUI()
  console.log("hello")
})
var createDate = function(){
  var date = moment().format("ll");
  $("#date").html(date);
}

$(".SignUp").on("click", function(){
  signUp()
})

var signUp = function(){
  $.ajax({
    url: "new_user_session_path",
    method: "GET",
    success: function(data){

    }
  })
}


var getBusSelect = function(){
  $.ajax({
    url: "/stations/buses.json",
    method: "GET",
    success: function(data){
      
      _.each(data.stops, function(steve){
        var allData = {
          name: steve.name,
          routes: steve.routes,
          id: steve.stop_id,
        }
        var htmlString = templates.selectbus(allData)
        var $itemHtml = $(htmlString)
        $(".sBus").append($itemHtml)

        $itemHtml.find(".fav").on("click", function(){
          var id = $(this).attr("data-id")

          $.ajax({
            method:"POST",
            url: "/stations/buses",
            data: {
              id: id
            },
            success: function(data){
              console.log(data)

            }
          })

        })
      })
    }
  })
}

var getMetroSelect = function(){
  $.ajax({
    url: "/stations/trains.json",
    method: "GET",
    success: function(data){
      _.each(data.stops, function(steve){
        var allData = {
          name: steve.name,
          routes: steve.routes,
          Id: steve.station_code,
        }
        var htmlString = templates.selectmetro(allData)
        var $itemHtml = $(htmlString)
        $(".sMetro").append(htmlString)

        $itemHtml.find(".fav").on("click", function(){
          var id = $(this).attr("data-id")

          $.ajax({
            method:"POST",
            url: "/stations/buses.json",
            data: {
              id: id
            },
            success: function(data){
              console.log(data)

            }
          })

        })

      })
    }
  })
}
var getBikeSelect = function(){
  $.ajax({
    url: "/stations/bikes.json",
    method: "GET",
    success: function(data){
      console.log(data)
      _.each(data.stations, function(steve){
        var allData = {
          name: steve.name,
          terminal: steve.terminal,
          
        }
        var htmlString = templates.selectbike(allData)
        var $itemHtml = $(htmlString)
        $(".sBike").append(htmlString)

        $itemHtml.find(".fav").on("click", function(){
          var id = $(this).attr("data-id")

          $.ajax({
            method:"POST",
            url: "/stations/buses.json",
            data: {
              id: id
            },
            success: function(data){
              console.log(data)

            }
          })

        })
      })
    }
  })
}
var getFavBus = function(){
  $.ajax({
    url: "/stations/buses.json",
    method: "GET",
    success: function(data){
      _.each(data, function(steve){
        var allData = {
          name: steve.name,
          routes: steve.routes,
          Id: steve.stop_id,
        }
        var htmlString = templates.metro(allData)
        $(".Bus").append(htmlString)
      })
    }
  })
}
var getFavBike = function(){
  $.ajax({
    url: "/stations/bikes.json",
    method: "GET",
    success: function(data){
      _.each(data, function(steve){
        var allData = {
          name: steve.name,
          routes: steve.routes,
          Id: steve.stop_id,
        }
        var htmlString = templates.bike(allData)
        $(".Bike").append(htmlString)
      })
    }
  })
}
var getFavMetro = function(){
  $.ajax({
    url: "/stations/trains.json",
    method: "GET",
    success: function(data){
      _.each(data, function(steve){
        var allData = {
          name: steve.name,
          routes: steve.routes,
          Id: steve.stop_id,
        }
        var htmlString = templates.bus(allData)
        $(".Metro").append(htmlString)
      })
    }
  })
}
var templates= {}
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
  getBusSelect()
  getMetroSelect()
  getBikeSelect()
  createDate()
})