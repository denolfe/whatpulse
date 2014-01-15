# Whatpulse

Wrapper for the Whatpulse API.  Allows retrieval of key and click counts.

## Installation

Add this line to your application's Gemfile:

    gem 'whatpulse'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whatpulse

## Usage

```
wp = Whatpulse::Client.new 'username'
puts wp.getUserData
```

## Contributing

1. Fork it ( http://github.com/denolfe/whatpulse/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
