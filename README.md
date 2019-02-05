# DryCrudJsonapi

This Gem adds a json:api to a rails application which is build with [`dry_crud`].

Currently only read operations are implmeneted.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dry_crud_jsonapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dry_crud_jsonapi

## Usage

Include the module `DryCrudJsonapi` in all controller you want to expose on the json:api

    class EmployeesController < CrudController
      include DryCrudJsonapi
      
      ...
    end

The controller must implement (or inherit) at least the following methods:

* `model_class`
* `entry`
* `entries`

Consult the [`dry_crud`] sourcecode about how these work, or just inherit your controller from `dry_crud`'s `CrudController`. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/puzzle/dry_crud_jsonapi.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


[`dry_crud`]: https://github.com/codez/dry_crud