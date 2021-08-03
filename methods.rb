# Defining a Method
def my_method_name
  # logic goes here
end

def say_hi(name = "Anonymous")
  puts "hi #{name}"
end

say_hi
say_hi("Laura")
say_hi("Jitta")
say_hi("Bob")

def method_with_keyword_args(arg_1:, arg_2:, arg_3:)
  puts arg_1
  puts arg_2
  puts arg_3
end

method_with_keyword_args(arg_3: "hi", arg_1: 10, arg_2: 2)

# Return Value
def return_value
  10
  return "hi" # explicit return
  :key
end

return_value