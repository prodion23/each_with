# EachWith

The EachWith gems adds some minor helper methods to array iteration.  

I find I often need to indicate if I'm on the last element of an array, which would normally look like: 

```ruby
some_array = [1,2,3]
some_array.each_with_index do |element, index|
  if index == some_array.length - 1
    # special case for the last element
  end
  # Rest of code
end
```

Using this gem you can simply do the following: 
```ruby
some_array = [1,2,3]
some_array.each_indicate_last do |element, is_last|
  if is_last
    # this is the last element
  end
  # Rest of code
end

```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'each_with'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install each_with

## Usage

The gem currently adds 3 methods to Array objects.

* `each_indicate_last`
* `each_indicate_first`
* `each_indicate_nth`

Example usage: 
```ruby
require 'each_with'

some_array = [1,2,3]
some_array.each_indicate_last do |element, is_last|
  if is_last
    # this is the last element
  end
  # Rest of code
end

some_array.each_indicate_first do |element, is_first|
  if is_first
    # this is the first element
  end
  # Rest of code
end

some_array = ["foo","bar","baz"]
some_array.each_indicate_nth(1) do |element, is_nth|
  if is_nth
    # this is the nth element
    # (NOTE: this is base 0, so is_nth would be true when element == "bar")
  end
  # Rest of code
end

```

## Development

After cloning this repo just do a `bundle install` & have at it - if you add new behavior please add specs.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/prodion23/each_with. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/prodion23/each_with/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EachWith project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/prodion23/each_with/blob/master/CODE_OF_CONDUCT.md).
