
function showPrice() {
    console.group('showPrice');
    console.debug('showPrice() invoked.');

    const originPrice = document.querySelector("#oPrice").value;
    const rate = document.querySelector('#rate').value;

    let savedPrice = originPrice * (rate / 100);
    let resultPrice = originPrice - savedPrice;

    console.log(`0. origin: ${origin}`);
    console.log(`1. originPrice: ${originPrice}`);
    console.log(`2. rate: ${rate}`);
    console.log(`3. savedPrice: ${savedPrice}`);
    console.log(`4. resultPice: ${resultPrice}`);

    let result = document.querySelector('#showResult');

    result.innerHTML = 
        `상품의 원래가격은 ${originPrice}이고, 할인율은 ${rate}% 입니다.<br>
        ${savedPrice}원을 절약한 ${resultPrice}원에 살 수 있습니다.`;
    
    console.groupEnd();
} // showPrice