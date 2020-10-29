def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names) #returns an array of greetings
    retval = []  #This is a shitty variable name
    names.each {|n| retval << badge_maker(n) }
    return retval
end

def assign_rooms(array)
    retval = []
    array.each_with_index {|name, index|
        retval << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    }
    return retval
end

def printer(arrayOfNames)
    weDontNeedNoStinkingBadges = batch_badge_creator(arrayOfNames)
    communal_living = assign_rooms(arrayOfNames)
    counter = 1
    while counter < arrayOfNames.length do
        puts weDontNeedNoStinkingBadges[counter]
        puts communal_living[counter]
        counter += 1
    end
end




