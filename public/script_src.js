// var i = 0
//
// function typeWriter () {
//   var txt = '<%=@search_query%>'
//   var speed = 125
//
//   document.getElementById('search').value += txt.charAt(i)
//   i++
//   setTimeout(typeWriter, speed)
//
//   if (document.getElementById('search').value === txt) {
//     runAnim()
//   }
// }
//
// function pauseAnim () {
//   document.getElementById('animation').style.animationPlayState = 'paused'
// }
//
//
// var runAnim = (function () {
//   var executed = false
//   return function () {
//     if (!executed) {
//       executed = true
//       document.getElementById('animation').style.animationPlayState = 'running'
//       setTimeout(function () { pauseAnim() }, 3000)
//       setTimeout(function () { submitForm() }, 3000)
//     }
//   }
// })()
//
// function submitForm () {
//   document.getElementById('form').submit()
// }
//
// function animSequence () {
//   setTimeout(function () { pauseAnim() }, 2500)
//   setTimeout(function () { typeWriter() }, 1500)
// }
