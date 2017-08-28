# YAML-load_first

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'YAML-load_first'
```

require like this (or use `Bundle.require`):

```ruby
require 'yaml/load_first'
```

## Usage

`YAML-load_first` works in the same way as `YAML.load_file`, but it takes an array of files, and will load the first one that exists. This can be used to load config files, looking at a number of locations until a matching one is found.

### Example

```ruby
require 'yaml/load_first'

# the first matching file will be loaded as the config
CONFIG = YAML.load_first_file [
    "#{ENV['HOME']}/config/app.config", 
    "./config/prod.config", 
    "./config/dev.config"
]

```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

