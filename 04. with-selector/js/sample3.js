

function calc() {
    console.group('calc');
    console.debug('calc() invoked.');

    const currYear = 2023;
    let birthYear = prompt('Please enter your birth year...');
    let age = currYear - birthYear + 1;

    const result = document.querySelector('#result');
    result.innerHTML = "Your age is " + age + "."; 

    console.groupEnd();
} // calc