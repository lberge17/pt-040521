# Strings
"hello world"
'hi'

<<-VARIABLE
  I am a 
  multiline string
VARIABLE

name = "Laura"
"Hello, #{name}!"

# Numbers - Integers/Floats
1
4

6.0

3 / 2 #=> 1
3 / 2.0 #=> 1.5
4 / 2.0 #=> 2.0

# Arrays
shopping_list_1 = [
  "apples",
  "oranges",
  "veggies"
]

shopping_list_2 = %w(apples oranges veggies)

shopping_list_1 == shopping_list_2

shopping_list[0] #=> "apples"

# Booleans

true 
false
# truthy - everything except nil and false
# falsy - nil and false

# Hash

new_hash = {
  key: "value"
}

old_hash = {
  :key => "value"
}

hash_with_string_key = {
  "key" => "value"
}

hash_with_symbol_key = {
  "key": "value"
}

person = {
  name: "Laura",
  job: "cohort lead",
  birth_month: "April",
  students: [],
  dog: {
    name: "Jitta"
  }
}

# person.name WON'T WORK
person[:name]
person[:work_place] = "FIS"

# Symbol
  # an id and a name
:symbol

# Nil
nil # lack, nothing