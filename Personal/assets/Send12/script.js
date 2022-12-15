let counter = document.querySelector('h1');
let count = 0;

setInterval(()=>{

    counter.innerText = count;
    count++
    
    // if(count > 1) location.replace('https://www.google.com/')
    
},1000)