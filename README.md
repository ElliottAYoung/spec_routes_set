# SpecRoutesSet

SpecRoutesSet is a simple testing tool that allows for you to create genuine, template-rendering routes that are only relevant within the scope of your test suite.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spec_routes_set', '~> 0.1.0'
```

And then execute:

    $ bundle install


## Usage

Usage of this gem is fairly basic. In your `spec_helper.rb` add the following bit of code:

```ruby
# Within RSpec.configure do |config|

config.before(:suite) do
	SpecRouteSet.new do
		get '/test-route-1' => 'test#template-1'
		get '/test-route-2' => 'test#template-2'
		resources :other_test_routes
	end
end
```

This will simply add any routes you've added to Rails' predefined routes from `config/routes.rb`, so now you can easily add several routes that only exist in the test environment! 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests (ironically enough, tests are still pending). You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ElliottAYoung/spec\_routes\_set. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

