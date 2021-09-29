// Exercise 1: loop over the names. If the name length is even, print "even", if odd print "odd"

// Expected output:

// even
// even
// odd
// even
// odd
// even

names = ["Sophia", "Noah", "Jackson", "Emma", "Mia", "Carter"];

// Loop over each name
// find the length of each name
// if he length of the name is %2 === 0 then it's odd

const oddOrEven = (names) => {
  return names.map((n) => (n.length % 2 === 0 ? "even" : "odd"));
};

console.log(oddOrEven(names));
