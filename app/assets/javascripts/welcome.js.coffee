# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#1").mouseenter ->
    $("#1").css "color", "#A53130"
  $('#1').click ->
    $('#spat').toggle "slow"
  
  $("#1").mouseout ->
    $("#1").css "color", "#A1A5A5"   
    
  $("#2").mouseenter ->
    $("#2").css "color", "#A53130"
  $('#2').click ->
    $('#spat2').toggle "slow"
  
  $("#2").mouseout ->
    $("#2").css "color", "#A1A5A5"
    
  $("#3").mouseenter ->
    $("#3").css "color", "#A53130"
  $('#3').click ->
    $('#spat3').toggle "slow"
  
  $("#3").mouseout ->
    $("#3").css "color", "#A1A5A5"
    
  $('#About').click ->
    $('#section1').toggle "slow"
  
  $('#Contact').click ->
    $('#section2').toggle "slow"
    
   $('#store').click ->
    $('#section3').toggle "slow"
    
  $('#bas').click ->
    $('#section4').toggle "slow"
  
  $('#discuss').click ->
    $('#section5').toggle "slow"
  
  $('#sponsored').click ->
    $('#section6').toggle "slow"
  
  $('#log').mouseenter ->
    $(this).css "color", "#A53130"
    
  $("#log").mouseout ->
    $(this).css "color", "#1A1A1A"
