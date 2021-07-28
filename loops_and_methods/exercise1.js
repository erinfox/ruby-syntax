// Exercise 1: loop over the names. If the name length is even, print "even", if odd print "odd"

// Expected output: 

// even
// even
// odd
// even
// odd
// even

names = [
  "Sophia", 
  "Noah", 
  "Jackson", 
  "Emma",
  "Mia",
  "Carter"
]


// Loop over each name
// Depending on the index number in the array, mark if even or odd 
// even prints "even"
// odd prints "odd"


const findEvenOrOdd = (name) => {
    return names.map(name => name.length % 2 === 0 ? "even" : "odd")
}

findEvenOrOdd().forEach(x => console.log(x))


// xs.forEach((x, i) => console.log(x));


