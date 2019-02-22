const dhm = (t) => {
    var cd = 24 * 60 * 60 * 1000,
        ch = 60 * 60 * 1000,
        d = Math.floor(t / cd),
        h = Math.floor( (t - d * cd) / ch),
        m = Math.round( (t - d * cd - h * ch) / 60000),
        pad = function(n){ return n < 10 ? '0' + n : n; };
  if( m === 60 ){
    h++;
    m = 0;
  }
  if( h === 24 ){
    d++;
    h = 0;
  }
  return d;
}

const start = document.querySelector('#start');
const end = document.querySelector('#end');
const totalPrice = document.querySelector('#total_price');
const price = document.getElementById('island-price')

const findPrice = () => {
  if (start) {
    end.addEventListener('change', (event) => {
      // console.log(end.value);
      const days = new Date(end.value) - new Date(start.value)
      if (days >= 0) {
        totalPrice.innerText = 'Total Price: ' + dhm(days) * parseInt(price.innerText, 10) + ' $'
      }
    });

    start.addEventListener('change', (event) => {
      const days = new Date(end.value) - new Date(start.value)
      if (days >= 0) {
        totalPrice.innerText = 'Total Price: ' + dhm(days) * parseInt(price.innerText, 10) + ' $'
      }
    })
  }
}

export { findPrice }
