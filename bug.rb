```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
my_object.value = 20
puts my_object.value # Output: 20

# The bug is subtle and appears when you try to use the method in a different context
puts my_object.value.class # Output: Integer
puts my_object.value.to_s # Output: "20"

# Now let's try to assign a value to the value method
my_object.value = "hello"
puts my_object.value # Output: "hello"
puts my_object.value.class # Output: String

#However, there is no error checking in the value method, so if we try to call a method on the value that is not supported by the current type of the value, an error occurs
puts my_object.value.upcase # Output: HELLO
my_object.value = 30
puts my_object.value.upcase # Raises NoMethodError: undefined method `upcase' for 30:Integer
```