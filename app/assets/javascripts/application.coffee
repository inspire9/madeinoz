#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require_tree .

$ ->
  $('.startups li').on 'click', (e)->
    $(e.currentTarget).toggleClass 'active'
