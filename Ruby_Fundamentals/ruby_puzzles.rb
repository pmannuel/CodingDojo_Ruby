# def puzzle1
    arr = [3,5,1,2,7,9,8,13,25,32]
    sum = arr.inject(0.0) {|sum,arr| sum + arr}
    puts "Sum of array is #{sum}"
    puts arr.reject {|i| i <= 10}.inspect
# end
# puzzle1

# def puzzle2
#     arr = %w{John KB Oliver Cory Matthew Christopher}
#     puts arr.shuffle.join(", ")
#     result = arr.reject{|i| i.size <= 5}
#     puts result.inspect
#     return result
# end
# puzzle2

# def puzzle3
#     arr = ('a'..'z').to_a
#     puts arr.shuffle!.last
#     puts arr[0]
#     if arr[0] =~ /[aeoui]/
#         puts "First letter is a VOWEL"
#     end
# end
# puzzle3

# def puzzle4
#     result = Array.new(10) { rand(55..100) }
#     return result
# end
# puts puzzle4.inspect

# def puzzle5
#     arr = puzzle4
#     arr.sort!
#     puts arr.inspect
#     puts "Max value is %d. Min value is %d." % [arr.max, arr.min]
# end
# puzzle5

# def puzzle6
#     return (0..5).map { (65 + rand(26)).chr }.join.downcase.capitalize
# end
# puts puzzle6
#
# def puzzle7
#     result = Array.new(10) { puzzle6 }
#     puts result.inspect
# end
# puzzle7
