require "pry"

def line(names)
  our_line=[]
  if names.size==0
    puts "The line is currently empty."
  else
    names.each_with_index do |name, index|
      our_line << "#{index+1}. #{name}"
    end
    line_string=our_line.join(" ")
    puts "The line is currently: #{line_string}"
  end
end 

def take_a_number(the_line, name)
  the_line << name
  last=the_line.index(the_line.last)+1
  puts "Welcome, #{name}. You are number #{last} in line."
end


def now_serving(customers)
  if customers.size==0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers[0]}."
    customers.shift
  end 
end