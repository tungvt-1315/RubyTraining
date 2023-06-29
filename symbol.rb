#Symbol looks like: var = :name
#symbol cant be mutable by var[i] like string


5.times do 
    puts "hi".object_id
end
#output: different object_id

5.times do 
    puts :hi.object_id
end
#output: same object_id

#symbols are generally faster than strings 
