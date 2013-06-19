# Logging HQ

A (beta) GUI for [Logging](https://github.com/TwP/logging) to set the log levels dynamically.

![screenshot](https://github.com/bukowskis/logging-hq/raw/master/doc/screenshot.png)

# Installation

```bash
gem install logging-hq
````

# Usage

To test it locally, just hit something like `bundle install && rackup`.

In Rails, you could use this:

```ruby
# routes.rb
require 'logging/hq/server'

# ...
mount Logging::HQ::Server.new, at: '/logging', as: :logging
# ...
````
