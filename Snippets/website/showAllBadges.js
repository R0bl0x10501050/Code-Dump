// How To Show ALL Badges Of A Game On The Site

let secondsToRunFor = 25 /* Change this number if you want */
let timesASecond = 4 /* Change this number to the number of times a second to try to click the button */
let clicked = 0
let interval
interval = setInterval(function() {
    if (clicked == secondsToRunFor*4) { clearInterval(interval) }
    clicked++
    document.querySelector(`button.btn-full-width[ng-click="$ctrl.seeMore()"]`).click()
}, 1000/timesASecond)
