# then_alias

This gem implements the `#then` alias for `Object#yield_self` that is
[coming](https://bugs.ruby-lang.org/issues/14594) in Ruby 2.6.

To add the `#yield_self` method to versions of Ruby prior to 2.5, see the
[yield_self](https://github.com/tjwp/yield_self) gem.

`#then` is equivalent to `#yield_self`, yielding the receiver but returning the
result of the block:

```ruby
42.yield_self { |num| num.to_s } #=> "42"
42.then { |num| num.to_s } #=> "42"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'then_alias'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install then_alias

The above just defines a `ThenAlias` module that can add the `#then` alias to
a module.

```ruby
class MyClass
  include ThenAlias
end
```

To include the `ThenAlias` module in `Object` and make the alias available
everywhere use:

```ruby
gem 'then_alias', require: 'then_alias/everywhere'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`,
which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tjwp/then_alias.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

