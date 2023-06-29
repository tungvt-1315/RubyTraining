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

#symbols are used as key of hash with => sign to assign value

myProfile = {
    :name => "Tung",
    :age => 20
}

puts myProfile #output: {:name=>"Tung", :age=>20}

#symbol are used as class attributes

class MyClass
    attr_accessor :name, :age
end

myDog = MyClass.new
myDog.name = "bool"

puts myDog.name #output: bool