# SoftDelete

Easy way to soft delete records. This micro gem helps developer to instantly add delatable column, which provides assistance in marking record as deleted while applying default scope to the model. The default scope restrict records which are updated as deleted.  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'my_soft_delete'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install my_soft_delete

## Usage

1. Add migration for column which deleted_at and its type will be datetime. We will add generator in next version.
2. Add acts_as_soft_delete in the model class.
3. If you want to force delete record use the method destroy(force: true). That will delete the record permanently. 

## Contributing

1. Fork it ( https://github.com/victorcreed/soft_delete/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
