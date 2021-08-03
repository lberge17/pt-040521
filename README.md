# Ruby Fundamentals

## Variables

- 5 Types
    ```
        name = "Laura"   # local variables
        MONTH = "April"    # constants are defined with capital letters
        @location = "Minneapolis"  # instance variables (we'll cover these next week)
        @@school = "Flatiron"   # class variables (we'll cover these next week)
        $school = "Flatiron"    # global variable - don't use these
    ```

## Data Types

- Numbers
    - [Integers](https://ruby-doc.org/core-2.6.1/Integer.html)
    ```
        n = 2
    ```
    - [Floats](https://ruby-doc.org/core-2.6.1/Float.html)
    ```
        n = 3.14159
    ```
- Booleans
    - [True](https://ruby-doc.org/core-2.6.1/TrueClass.html) and [False](https://ruby-doc.org/core-2.6.1/FalseClass.html)
- [Nil](https://ruby-doc.org/core-2.6.1/NilClass.html)
    - means "nothing" in Ruby (JS and many other languages use `null`)
- [Strings](https://ruby-doc.org/core-2.6.1/String.html)
    - single or double quotes
    - string interpolation only works with double quotes
    ```
        name = 'Laura'
        greeting = "Hello, #{name}!"
    ```
- [Hashes](https://ruby-doc.org/core-2.6.1/Hash.html)
    - stores key/value pairs (unordered)
    ```
        laura_one = {
            :name => "Laura",
            :job => "cohort lead"
        }
        laura_two = {
            name: "Laura",
            job: "cohort lead"
        }

        laura_one[:job] #=> "cohort lead"
    ```
- [Arrays](https://ruby-doc.org/core-2.6.1/Array.html)
    - ordered collection/list
    ```
        shopping_list = [
            "spinach",
            "bagels",
            "salmon"
        ]

        shopping_list[2] #=> "salmon"
    ```
    - we also have [Ranges](https://ruby-doc.org/core-2.6.1/Range.html) in Ruby
- [Symbols](https://ruby-doc.org/core-2.6.1/Symbol.html)
    - similar to strings, but take up less memory.
    - just consist of a name and an internal ID
    ```
        "hello".object_id != "hello".object_id
        :hi.object_id == :hi.object_id
    ```

## Printing to the terminal

```
    def say_hi
        puts "Greetings" # puts also prints a line break (same as print "Greetings\n")
        print "hello "
        print "world"
        print "!"
        p "Bye"      # (p is short for puts)
        print "!"
    end
```

```
>    say_hi

    Greetings
    hello world!Bye
    !          #=> nil (both puts and print return nil)
```

## Methods

- Defining Methods

    ```
        def bark
            puts "WOOF!"
        end
    ```

- Calling Methods

    ```
        bark
        bark() # we won't do this unless we are passing arguments
    ```
- Arguments/Parameters

    ```
        def add(x, y)
            x + y
        end

        add(3, 2) #=> 5

        def greeting(name = "Laura")  # default argument
            "Hi #{name}"
        end

        greeting("Jitta")   #=> "Hi Jitta"
        greeting            #=> "Hi Laura"
    ```
- Implicit/Explicit Return
    
    ```
        def add(x, y)
            x + y  # implicit return of last evaluated line
        end

        def say_hello
            puts "Hello"
            return 5      # 5 is explicitly returned
            3 * 6         # this line is never run
        end
    ```

## Conditionals

- if, elsif, and else
- ALL values are `truthy` in Ruby EXCEPT for `false` and `nil`

    ```
        if true
            puts "This will run!"
        else
            puts "This will not run..."
        end

        if nil
            puts "This will not run..."
        else
            puts "This will run!"
        end

        # CASE STATEMENT
        weather = "sunny"

        case pizza
        when "cold"
            puts "I'll need a coat"
        when "rainy"
            puts "I think I'll stay inside today"
        when "sunny"
            puts "BEACH DAY"
        else
            puts "eh"
        end
    ```

## Debugging 

- pry
    - pry is a `gem`
    - to use: 
        - install
        - require in file needed
        - place `binding.pry` where you want code to stop
        - type `exit` to quit the pry session


## Documentation Links
- [Ruby Docs](https://ruby-doc.org/core-2.6.1/)
- [Ruby Lang](https://www.ruby-lang.org/en/)
- [RSpec Docs](https://rspec.info/documentation/)