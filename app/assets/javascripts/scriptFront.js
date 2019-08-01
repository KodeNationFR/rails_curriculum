var btn = document.querySelector('.burger');
var menu = document.querySelector('.mobile');
var line1 = document.querySelector('.line1');
var line2 = document.querySelector('.line2');
var line3 = document.querySelector('.line3');


btn.onclick = function () {
    menu.classList.toggle('nav-active');
    line1.classList.toggle('cross1');
    line2.classList.toggle('cross2');
    line3.classList.toggle('cross3');

};