me = {:firstname => "Priscilla", :lastname => "Mannuel"}
puts me
puts me[:firstname], me[:lastname]

puts "Deleteing :lastname"
me.delete(:firstname)
puts "UPDATE:", me

if me.has_key?(:firstname)
    puts "I have a first name"
else
    puts "I don't have a first name"
end

if me.has_value?("Dojo")
    puts "I have Dojo"
else
    puts "No Dojo"
end
