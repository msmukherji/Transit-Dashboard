var select = Backbone.Model.extend({

  favorite: function() {
    $.ajax({
      url: "/tasks/" + this.id + "/close",
      method: "POST",
      context: this,
      success: function(updatedTask) {
        this.set(updatedTask)
      }
    })
  },

  unfavorite: function() {
    $.ajax({
      url: "/tasks/" + this.id + "/reopen",
      method: "POST",
      context: this,
      success: function(updatedTask) {
        this.set(updatedTask)
      }
    })
  },

})

var select = Backbone.Model.extend({



})

var selected-Bus = Backbone.Collection.extend({

  model: Task,

  url: "/stations/buses"

})
var selected-Metro = Backbone.Collection.extend({

  model: Task,

  url: "/stations/trains"

})
var selected-Bike = Backbone.Collection.extend({

  model: Task,

  url: "/stations/bikes"

})

var not-selected-Bus = Backbone.Collection.extend({

  model: Task,

  url: "/stations/buses"

})
var not-selected-Metro = Backbone.Collection.extend({

  model: Task,

  url: "/stations/trains"

})
var not-selected-Bike = Backbone.Collection.extend({

  model: Task,

  url: "/stations/bikes"

})




var selectionView = Backbone.View.extend({

  events: {
    "click .btn-done": "clickedComplete",
     
  },

  clickedComplete: function() {
    this.model.close()
  },

  clickedReopen: function() {
    this.model.reopen()
  },

  tagName: "div",

  className: "task-container",

  initialize: function(taskModel){
    this.model = taskModel

    this.listenTo(this.model, "change", this.render)

    this.render()
  },

  render: function() {
    this.$el.html( templates.todo(this.model.toJSON()) )
  }

})


var busView = Backbone.View.extend({

  events: {
    "click .btn-done": "clickedComplete",
     
  },

  clickedComplete: function() {
    this.model.close()
  },

  clickedReopen: function() {
    this.model.reopen()
  },

  tagName: "div",

  className: "task-container",

  initialize: function(taskModel){
    this.model = taskModel

    this.listenTo(this.model, "change", this.render)

    this.render()
  },

  render: function() {
    this.$el.html( templates.todo(this.model.toJSON()) )
  }

})



var metroView = Backbone.View.extend({

  events: {
    "click .btn-done": "clickedComplete",
    "click .btn-undo": "clickedReopen"
  },

  clickedComplete: function() {
    this.model.close()
  },

  clickedReopen: function() {
    this.model.reopen()
  },

  tagName: "div",

  className: "task-container",

  initialize: function(taskModel){
    this.model = taskModel

    this.listenTo(this.model, "change", this.render)

    this.render()
  },

  render: function() {
    this.$el.html( templates.done(this.model.toJSON()) )
  }

})

var bikeView = Backbone.View.extend({

  events: {
    "click #btn-done": "clickedComplete",
    "click #btn-undo": "clickedReopen"
  },

  clickedComplete: function() {
    this.model.close()
  },

  clickedReopen: function() {
    this.model.reopen()
  },

  tagName: "div",

  className: "task-container",

  initialize: function(taskModel){
    this.model = taskModel

    this.listenTo(this.model, "change", this.render)

    this.render()
  },

  render: function() {
    this.$el.html( templates.done(this.model.toJSON()) )
  }

})