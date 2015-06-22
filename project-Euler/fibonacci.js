var total = 0;
var last = 1;
var hold;
var i = 2;

do {
    if (i%2===0) {
        total += i;
    };
    hold = i;
    i = i + last;
    last = hold;
} while (i <= 4000000);

console.log(total);