names = [
  "Sophia",
  "Noah",
  "Jackson",
  "Emma",
  "Mia",
  "Carter"
]

def odd_or_even(first_names)
  first_names.each do |name|
    if name.length % 2 == 0
        puts "even"
    else 
        puts "odd"
    end 
  end 
end 

odd_or_even(names)
