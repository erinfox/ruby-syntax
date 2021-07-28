# Exercise 1: loop over the names. If the name length is even, print "even", if odd print "odd"

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


def odd_or_even(first_name)
    first_name.each do |name| 
      if name.length % 2 == 0
          puts "even"
       else 
          puts "odd"
      end 
    end 
end 

odd_or_even(names)



