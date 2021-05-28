var i = 0

var txt = $(<%=@search_query%>)


var speed = 125

function typeWriter () {


  document.getElementById('search').value += txt.charAt(i)
  i++
  setTimeout(typeWriter, speed)

  if (document.getElementById('search').value === txt) {
    runAnim()
  }
}

function pauseAnim () {
  document.getElementById('animation').style.animationPlayState = 'paused'
}

function runAnim () {
  document.getElementById('animation').style.animationPlayState = 'running'

  setTimeout(function () { submitForm() }, 3100)
}

function submitForm () {
  document.getElementById('form').submit()
}

function animSequence () {
  setTimeout(function () { pauseAnim() }, 2500)
  setTimeout(function () { typeWriter() }, 1500)
}
