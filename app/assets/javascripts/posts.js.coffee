# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

mood = document.getElementById('moodtag').innerHTML

switch mood
  when ':@ ANGRY'
    document.getElementById('comments').style.background = '#FF6666'
    document.getElementById('date').style.background = '#FF3333'
    document.getElementById('moodtag').style.background = '#FF3333'
    document.getElementById('triangle').style.borderColor = 'transparent #993333 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#FF3333'
      i++
  when ':0 BORED'
    document.getElementById('comments').style.background = '#CCCC99'
    document.getElementById('date').style.background = '#999966'
    document.getElementById('moodtag').style.background = '#999966'
    document.getElementById('triangle').style.borderColor = 'transparent #666633 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#999966'
      i++
  when ':D VERY HAPPY'
    document.getElementById('comments').style.background = '#FFCC66'
    document.getElementById('date').style.background = '#FFCC33'
    document.getElementById('moodtag').style.background = '#FFCC33'
    document.getElementById('triangle').style.borderColor = 'transparent #CC9900 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#FFCC33'
      i++
  when ':| NUMB'
    document.getElementById('comments').style.background = '#FFFF99'
    document.getElementById('date').style.background = '#CCCC66'
    document.getElementById('moodtag').style.background = '#CCCC66'
    document.getElementById('triangle').style.borderColor = 'transparent #999933 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#CCCC66'
      i++
  when ':) HAPPY'
    document.getElementById('comments').style.background = '#FFFF66'
    document.getElementById('date').style.background = '#FFFF00'
    document.getElementById('moodtag').style.background = '#FFFF00'
    document.getElementById('triangle').style.borderColor = 'transparent #CCCC00 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#FFFF00'
      i++
  when ':/ ANNOYED'
    document.getElementById('comments').style.background = '#CCFF66'
    document.getElementById('date').style.background = '#99CC00'
    document.getElementById('moodtag').style.background = '#99CC00'
    document.getElementById('triangle').style.borderColor = 'transparent #669900 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#99CC00'
      i++
  when ':# SICK'
    document.getElementById('comments').style.background = '#99FF99'
    document.getElementById('date').style.background = '#66CC66'
    document.getElementById('moodtag').style.background = '#66CC66'
    document.getElementById('triangle').style.borderColor = 'transparent #669966 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#66CC66'
      i++
  when ':P CHEEKY'
    document.getElementById('comments').style.background = '#99FFCC'
    document.getElementById('date').style.background = '#66CC99'
    document.getElementById('moodtag').style.background = '#66CC99'
    document.getElementById('triangle').style.borderColor = 'transparent #339966 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#66CC99'
      i++
  when ':( SAD'
    document.getElementById('comments').style.background = '#CCFFFF'
    document.getElementById('date').style.background = '#99CCCC'
    document.getElementById('moodtag').style.background = '#99CCCC'
    document.getElementById('triangle').style.borderColor = 'transparent #669999 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#99CCCC'
      i++
  when ':`( CRYING'
    document.getElementById('comments').style.background = '#99FFFF'
    document.getElementById('date').style.background = '#66CCCC'
    document.getElementById('moodtag').style.background = '#66CCCC'
    document.getElementById('triangle').style.borderColor = 'transparent #339999 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#66CCCC'
      i++
  when '>:) EVIL'
    document.getElementById('comments').style.background = '#FFCCFF'
    document.getElementById('date').style.background = '#CC99CC'
    document.getElementById('moodtag').style.background = '#CC99CC'
    document.getElementById('triangle').style.borderColor = 'transparent #663366 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#CC99CC'
      i++
  when ':$ EMBARASSED'
    document.getElementById('comments').style.background = '#FF99CC'
    document.getElementById('date').style.background = '#CC6699'
    document.getElementById('moodtag').style.background = '#CC6699'
    document.getElementById('triangle').style.borderColor = 'transparent #990066 transparent transparent'
    wordtagclass = document.getElementsByClassName('wordtag')
    i = 0
    while i < wordtagclass.length
      wordtagclass[i].style.background = '#CC6699'
      i++
