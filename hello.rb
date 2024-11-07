# class House

#     attr_accessor :color

#     def initialize(color)
#         @color=color
#     end
    

# end

# house = House.new("blue")
# puts house.color
# house.color = 'red'
# puts house.color

# array1 = ['1',"loves","me"]

# array1.each {|n| puts n.upcase}

# myObject = {color:"red",spark:"blue"}
# puts myObject[:color]
# myObject[:time] ="0600"
# puts myObject
# puts myObject.class

# def sum(x,y)
#     return x + y
# end

# puts sum(4,5)

# array1 = [3,4,5,6,7]
# p array1
# puts array1
# print array1.class


# use_lambda = ->{puts "Hello"}
# use_lambda.call

# s1 = Proc.new{puts "Hello using a proc"}
# s1.call


# Write a program that validates user entry using an email and username and accepts or declines access

Email = "@example.com"
Username = 'Wanjiku'


def getemail
    print "Please give your email: "
    gets.chomp
end

def validateEmail(userEmail)
    if Email == userEmail
        userUsername = getusername()
        validateUsername(userUsername)
    else
        puts "Invalid email "
    end
    exit
end

def getusername
    print "Please give your user name :"
    gets.chomp
end


def validateUsername(userUsername)
    if Username == userUsername
        puts "Welcome #{Username}"
        proceed = toShowMenu
        displayMenu(proceed)
    else
        puts "Invalid username"
    end
    exit
end

def toShowMenu
    print "To proceed to menu (Type 'yes' or 'no') :"
    gets.chomp 
end

def displayMenu(proceed)
    if proceed == 'yes' 
       result = Menu()
       menuSelection(result)

    else
        puts "Exiting......."
    end
    exit
end

def Menu
    puts "1.Access services"
    puts "2.Add a user"
    puts "3.Exit"
    puts "Choose a service : " 
    gets.chomp

end

def menuSelection(result)
    if result == '1'
        puts "Services Loading..."
    elsif result == '2'
        puts "New user prep..."
    else result == '3...'
        puts "Logging off..."
    end
end

userEmail = getemail
validateEmail(userEmail)











