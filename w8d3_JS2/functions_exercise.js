// Write a function `startsWithR` that accepts a string as an argument and returns a boolean indicating
// whether or not the string starts with 'r' or 'R'.
let startsWithR = function(string) {
    return (string[0] === "R") || (string[0] === "r");
};




console.log(startsWithR("roger that")); // true
console.log(startsWithR("Row, row, row your boat")); // true
console.log(startsWithR("slip")); // false
console.log(startsWithR("Taxicab")); // false


// Write a function `parity` that accepts a number as an argument. The function should return the
// string 'even' if the number is even. It should return the string 'odd' if the number is odd.

let parity = function(num) {
    if (num % 2 === 0) {
        return "even"
    } else {
        return "odd"
    }
}

console.log(parity(5)); // 'odd'
console.log(parity(7)); // 'odd'
console.log(parity(13)); // 'odd'
console.log(parity(32)); // 'even'
console.log(parity(10)); // 'even'
console.log(parity(602348)); // 'even'

for (let count = 0; count <= 4; count++) {
    console.log("I got this")
}


// Write a function `total` that accepts an array of numbers as an argument. The function should return
// the total sum of all elements of the array.

let total = function(arr){
    let sum = 0;
    arr.forEach(el=>{
        sum += el;
     })
     return sum;
};


console.log(total([3, 2, 8])); // 13
console.log(total([-5, 7, 4, 6])); // 12
console.log(total([7])); // 7
console.log(total([])); // 0

// Write a function `makeAcronym` that accepts a sentence string as an argument. The function should
// return a string containing the first character of each word in the sentence.



// console.log(makeAcronym("New York")); // NY
// console.log(makeAcronym("same stuff different day")); // SSDD
// console.log(makeAcronym("Laugh out loud")); // LOL
// console.log(makeAcronym("don't over think stuff")); // DOTS

  
// Write a function `print2d` that accepts a two-dimensional array as an argument. The function
// should print all inner elements of the array.

let print2d = function (arr) {
    let str = '';
    
        for (let i = 0; i < arr.length; i++) {
            for (let j = 0; j < arr[i].length; j++) {
                console.log(arr[i][j])
            }
        }
    };
    

let array1 = [
    ["a", "b", "c", "d"],
    ["e", "f"],
    ["g", "h", "i"],
  ];
  print2d(array1);
  // prints
  //  a
  //  b
  //  c
  //  d
  //  e
  //  f
  //  g
  //  h
  //  i
  
  let array2 = [[9, 3, 4], [11], [42, 100]];
  print2d(array2);
  // prints
  //  9
  //  3
  //  4
  //  11
  //  42
  //  100


