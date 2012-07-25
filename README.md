# Omniauth::Buffer2

Official OmniAuth Strategy for the Buffer OAuth2 API

## Installation

Add this line to your application's Gemfile:

```bash
gem 'omniauth-buffer2'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install omniauth-buffer2
```

## Usage

### With Sinatra

```ruby
use OmniAuth::Builder do
  provider :buffer, ENV['BUFFER_KEY'], ENV['BUFFER_SECRET']
end
```

### With Rails

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :buffer, ENV['BUFFER_KEY'], ENV['BUFFER_SECRET']
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
