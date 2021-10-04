# Exercise 1: loop over the names. 
# If the name length is even, print "even", if odd print "odd"

# Expected output: 

# even
# even
# odd
# even
# odd
# even

names = [
  "Sophia",
  "Noah",
  "Jackson",
  "Emma",
  "Mia",
  "Carter"
]

h = {foo: 0, bar: 1, baz: 2}

puts h.values

h.each do |key, value|
  puts value
end 
 # 0, 1, 2





 names = [
  "Sophia",
  "Noah",
  "Jackson",
  "Emma",
  "Mia",
  "Carter"
]

#map
def oddOrEven(names)
  results = names.map do |name| 
     name.length % 2 == 0 ? "even" : "odd"
  end 
  puts results
end 

oddOrEven(names)

# each
names.each do |name|
  if name.length % 2 == 0 
    puts "Even"
  else 
    puts "Odd"
  end
end 
# even
# even
# odd
# even
# odd
# even