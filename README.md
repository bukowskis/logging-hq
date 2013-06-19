# Logging HQ

A (beta) GUI for [Logging](https://github.com/TwP/logging) to set the log levels dynamically.

![screenshot](http://replace-me.example.com)

# Installation

```bash
gem install logging-hq
````

# Usage

To test it locally, just hit something like "bundle install && rackup".

In Rails, you could use this:

```ruby
# routes.rb
require 'logging/hq/server'

# ...
mount Logging::HQ::Server.new, at: '/logging', as: :logging
# ...
````
