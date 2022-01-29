let a = 0;
let i;
i  = setInterval(function() {
    if (a > 100) {
        clearInterval(i);
        return;
    }
    window.scrollTo(0, 1e7);
    a++;
}, 100);
