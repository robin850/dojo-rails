# Dojo with Ruby on Rails

I haven't found a good implementation of the cool javascript Dojo toolkit library so I decided to release my own gem. This gem allows you to use the full dojo suite in your [Ruby on Rails](http://github.com/rails/rails) application. The project is divided into three gems dojo-rails, dijit-rails and dojox-rails.

*Notice* : the project isn't very stable for the moment. You must be aware of that when using these gems. 

## Installation and use

To use these gems, you should edit the `Gemfile` of your application and add one of the following line:

``` ruby
gem 'dojo-rails'
gem 'dojox-rails'
gem 'dijit-rails'
```

Then run the `bundle` command to install the(se) gem(s). Now, inside your javascript assets, you can use dojo, dijit or dojox. If you want more information on how to set-up and use one of these gems in your application, please see the README file in the root of the projects' directory. 

Notice that `dojo-rails` provides both base and full distribution of the toolkit. If you just the want the base distribution, in your js file, add:

```javascript
//= require dojo
```

And for the full version:

```javascript
//= require dojo/dojo
```

That's it! You can now start make javascript code using the cool Dojo toolkit library even in CoffeeScript files (extracted from the [dojo documentation](http://dojotoolkit.org/documentation/tutorials/1.7/hello_dojo)):

It may seem obvious but you can use dojo inside CoffeeScript files. Here two examples extracted (partially) from the [reference guide](http://dojotoolkit.org/reference-guide/1.8/) and converted into coffeescript:

```coffeescript
//= require dojo
require(["dojo/router", "dojo/dom", "dojo/fx", "dojo/domReady!"], (router, dom, fx) ->
  router.register("/articles/:id", (evt) ->
    alert "The article has the id " + evt[id]
  )
  router.startup()

  greeting = dom.byId("greeting")
  greeting.innerHTML += " from Dojo!"

  fx.slideTo({
    top: 100,
    left: 200,
    node: greeting
  }).play()
)
```

### Troubleshooting

One of the worst flaw of the use of dojo-rails and Coffeescript together is that sometimes, Dojo defines functions which are reserved keyword in Coffeescript such as `then` with `dojo/request` or the `dojo/on` module that you will certainly name `on`. Except rename modules, there is no real solution such as for the `then` function. If you have a solution, please let me know!  

## Special thanks

I want to thanks the [jquery-rails](http://github.com/rails/jquery-rails) project ; it helps me to release theses three projects. I would also thanks the [Ruby on Rails team](http://github.com/rails/) and its contributors. Thanks guys!

## License

This project is released under the MIT license. See the `LICENSE` file for more information.