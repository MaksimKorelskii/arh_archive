# ArhArchive API Ruby interface

This is a Ruby client that enables you to easily perform using [ArhArchive] for save images.

## Prerequisites

[Ruby 2.7+](https://www.ruby-lang.org/en/) and [RubyGems subsystem](https://rubygems.org/) is required.

## Installation

Install this gem by running:

```
$ gem install arh_archive
```

Or add it to your `Gemfile`:

```ruby
gem 'arh_archive'
```

And run:

```
bundle install
```

## Usage

Include the client in your script:

```ruby
require 'arh_archive'
```

Next, instantiate the client:

```ruby
client = ArhArchive.client
```

And perform:

```ruby
client.save_images(number_of_document, page_from, page_to)
```

### Additional request parameters

 Directory for save images.

```ruby
client.save_images(number_of_document, page_from, page_to, directory)
```

Licensed under the [MIT license](./LICENSE.md).