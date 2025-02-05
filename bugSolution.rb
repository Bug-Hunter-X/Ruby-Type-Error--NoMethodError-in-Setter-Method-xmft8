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

# Improved version with type checking
class MyClassImproved
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
    # add type checking to avoid errors, if needed
    #if @value.is_a?(String) && !@value.empty? 
     #puts @value.upcase 
    #elsif @value.is_a?(Numeric)
     #puts @value + 10
    #else 
     #puts "Unsupported type"
    #end
  end
end
my_object_improved = MyClassImproved.new(10)
puts my_object_improved.value # Output: 10
my_object_improved.value = "hello"
puts my_object_improved.value # Output: hello
my_object_improved.value = 30
puts my_object_improved.value # Output: 30
```