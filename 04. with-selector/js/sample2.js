document.write('<!DOCTYPE html>');

// (1) valid string or (2) empty string (if just enter without any input) or (3) null (if cancel)
var yourName = prompt("Please enter your name ?", 'Pyramide');
console.log('1. yourName:', yourName);
document.write('<b><big>'+yourName+'</big></b>');

// var pName = document.querySelector('#name');
// pName.innerHTML = '<b><big>'+yourName+'</big></b>';
