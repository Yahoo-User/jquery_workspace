var heading = document.querySelector("#heading");
console.log('1. heading:', heading);
console.log('2. heading.style:', heading.style, heading.style.constructor.prototype);

heading.onclick = () => heading.style.color = 'red';

