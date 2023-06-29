#while loop
puts "while"
while 1 < 0 do
    puts 5 #is not printed
end

#do while loop
puts "do while"
begin
    puts 5 #is printed
end while 1 < 0

#foreach
puts "foreach"
[1, 2, 3, 4, 5].each do |item| #item is name of iterator
    puts item
end

#for in
puts "for"
for i in 0..5 # 0..5 is a range
    puts i
end

puts "for with break"
for i in 0..5
    if i > 2 then
        break
    end
    puts i
end #output: 0 1 2

puts "for with continue"
for i in 0..5
    if i < 2 then
        next
    end
    puts i
end #output: 2 3 4 5

puts "for with redo"
for i in 0..5
    if i < 2 then
        puts i
        i = i + 1
        redo #redo make loop run again with same iterator
    end
end #output: 0 0 1

puts "Retry"

begin
    retries ||= 0 # assign value only of variable == nil
    puts "try ##{retries}"
    raise "the roof"
rescue
    retry if (retries += 1) < 3
end

#select, map, inject
puts "select"
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts a.select{|item| item%2 == 0} #output: 2 4 6 8, select wont change origin array

puts "map"
puts a.map{|item| item*2} #map wont change origin array

puts "inject"

puts a.inject(0){ #find sum of array
    |running_total, item| 
    running_total + item #block code
} 
#(0) is init value, first loop running_total has value of init value, 
#each loop running_total is updated by block code in loop
#finish loop return value of running total