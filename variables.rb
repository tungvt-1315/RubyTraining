# Ruby variables

#global variables started with $ sign, can be accessed everywhere in file
$globalVariable = 1


#local variables can be only accessed in its scope (in for, in class, in condition statement, ...)
localVariable = 2


#Class variables started with @@ sign, their values are shared in a class
class Test1
    @@classVariable = 3
end


#instance variables started with @ sign, their values only can be accessed in a instance

class Test2
    def initialize
        @instanceVariable = 4
    end
end

#constants started with an upper letter

CONSTANT = 10 



