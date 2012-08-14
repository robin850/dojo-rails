# Dojo with Ruby on Rails

I haven't found a good implementation of the cool javascript Dojo toolkit library so I decided to release my own gem. This gem allows you to use Dojo with the [Ruby on Rails](http://github.com/rails/rails) framework. For the moment it just provides the dojo base and full distribution but I will quickly release a dojox-rails and dijit-rails gem.

## Installation

Go in your rails project then open your `Gemfile` and add the following line:

``` ruby
gem 'dojo-rails'
```

Then run the `bundle` command to install the gem. Now, in your application.js file (for instance) you can require dojo. To require the dojo base distribution put:

``` javascript
//= require dojo
```

And for the full dojo version:

``` javascript
//= require dojo/dojo
```

That's it! You can now start make javascript code using the cool Dojo toolkit library even in CoffeeScript files (extracted from the [dojo documentation](http://dojotoolkit.org/documentation/tutorials/1.7/hello_dojo)):

```coffeescript
require ["dojo/dom", "dojo/fx", "dojo/domReady!"], (dom, fx) ->
  # The piece we had before...
  greeting = dom.byId("greeting")
  greeting.innerHTML += " from Dojo!"
 
  # ...but now, with a fun animation!
  fx.slideTo({
    top: 100,
    left: 200,
    node: greeting
  }).play()
```

## Special thanks

I want to thanks the [jquery-rails](http://github.com/rails/jquery-rails) project. It helps me to release this project!
I also want to thanks the [Ruby on Rails team](http://github.com/rails/) and its contributors. Thanks guys!

## License

This project is released under the MIT license. See the `LICENSE` file for more information.