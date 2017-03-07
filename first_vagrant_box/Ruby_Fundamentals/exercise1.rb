#Basic 13: RUBY

# (1..255).each { |i| puts i}

# (1..255).step(2).to_a.each {|i| puts i}

# def printSum
#     sum = 0
#     for i in 0..10
#         new_num = i
#         sum = sum + i
#         puts "New number: #{new_num} Sum: #{sum}"
#     end
# end
# printSum

x = [1, 5, 10, -2]

# x.each {|i| puts i}

# puts "Largest value in the array is #{x.max}"

# def average(x)
#     sum = x.inject(0.0){|sum,x| sum + x }
#     average = (sum/x.length).to_f
# end
# puts average(x)

# puts (1..255).select { |i| i%2 !=0}

# def greaterThanY(x, val)
#     x.select { |i| i > val}.size
# end
# puts greaterThanY(x, 8)

# puts x.map {|i| i*i}

# puts x.map {|i| i < 0 ? 0 : i}

# def maxMinAve(arr)
#     max = arr.max
#     min = arr.min
#     ave = arr.inject(0.0){|sum,arr| sum + arr }/arr.size
#     return Hash["max", max, "min", min, "ave", ave]
# end
# puts maxMinAve(x)

# def shiftFrontByOne(arr)
#     arr.shift
#     arr.insert(-1, 0)
#     puts arr.inspect
# end
# shiftFrontByOne(x)

puts x.map {|i| i < 0 ? "Dojo" : i}.inspect
