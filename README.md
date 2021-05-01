# single-instance

[![RSpec Status](https://github.com/jubishop/single-instance/workflows/RSpec/badge.svg)](https://github.com/jubishop/single-instance/actions/workflows/rspec.yml)  [![Rubocop Status](https://github.com/jubishop/single-instance/workflows/Rubocop/badge.svg)](https://github.com/jubishop/single-instance/actions/workflows/rubocop.yml)

In the sky, it's a class, no it's an instance!

## Installation

### In a Gemfile

```ruby
source: 'https://www.jubigems.org/' do
  gem 'single-instance'
end
```

## Usage

```ruby
class MyClass
  include SingleInstance

  def initialize(name = 'john')
    @name = name
  end

  def say_hi
    "#{hello} #{@name}"
  end

  private

  def hello
    'hello'
  end
end

# You can call instance if you want
MyClass.instance('joe').say_hi # hello joe
MyClass.say_hi # hello joe

# Or you can skip it and it will be called for you.
# In new process:
MyClass.say_hi # hello john
MyClass.instance.say_hi # hello john

# And you cannot call private methods
MyClass.instance.hello # NoMethodError
MyClass.hello # NoMethodError
```

## Spec

All examples provided in this README are testably proven in [`spec/`](https://github.com/jubishop/single-instance/tree/master/spec)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
