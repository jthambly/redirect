/*
 * redirect.js
 *
 * Created on 20 April 2020
 *
 * JavaScript file for basic redirect operations
 *
 */

var timer = 10;
var url = "#";

function configure( _url, _timer ){
    url = _url;
    timer = _timer;
}

function countDown() {
    timer--;
    document.getElementById('timer').innerHTML = "... in " + timer + " seconds.";
}

function redirect() {
    document.body.innerHTML = "<div id='msg'>Have a nice day!</div>";
    window.location.replace(url);
}

function start() {
    interval = setInterval(countDown, 1000);
    timeout = setTimeout(redirect, (timer * 1000));
}

function stop() {
    clearTimeout(timeout);
    clearInterval(interval);
    window.location.href = "/redirect-stop.html";
}