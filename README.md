# Matisse

Matisse is a simple IRB output highlighter. It aims at resolving some issues that i personally had with Wirble. Because Wirble does a lot more than just colorizing the IRB output and i never used these features, i decided to bake my own. Matisse is the result of this effort and i hope you like it, too! This is how it looks like:

![Screenshot](https://github.com/padde/matisse/raw/master/doc/screenshot.png)

Feel free to send pull requests if you find an issue with Matisse (see section “Contributing“ below).

## Installation

    $ gem install matisse

## Usage

To enable colorization, in your `~/.irbrc` (or during an IRB session) do:

    require 'matisse/autoload'

or, if you prefer:

    require 'matisse'
    
    # maybe some other stuff
    
    Matisse.enable

if you want to disable colorization later on, do:

    Matisse.disable

## To do

* Support the following classes:
  * Time
  * Date
  * DateTime
  * OpenStruct
  * URI

* Find a system for managing (user defined) themes

* Support important Rails objects

* Better documentation (RDoc)

* Write tests

* Maybe
  * Colorize output of `pp`
  * Make spacing between Array/Hash elements customizable

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
