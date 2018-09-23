# ReceiveSelf

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/receive_self`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'receive_self'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install receive_self

## Usage

#### Describe `receive_self` in subclass definition.

```
class MyArray < Array
  receive_self
end
```

#### And you can use `__rself` suffix method.

```
m = MyArray.new

m.uniq

m.uniq__rself

```

#### This suffixed method return subclass instance.

`uniq` return Array instance.But `uniq__rself` return MyArray instance.

```
puts m.uniq.class #Array
puts m.uniq__rself.class #MyArray

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/receive_self. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ReceiveSelf project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/receive_self/blob/master/CODE_OF_CONDUCT.md).
