# Dojo with Ruby on Rails

I haven't found a good implementation of the cool javascript Dojo toolkit library so I decided to release my own gem. This gem allows you to use the full dojo suite in your [Ruby on Rails](http://github.com/rails/rails) application. The project is divided into several gems : 

* **dojo-rails**
* [dijit-rails](https://github.com/robin850/dijit-rails)
* [dojox-rails](https://github.com/robin850/dojox-rails). 

This repository used to host each project's folder but there are now in their own repository. This one host dojo itself (the base and full version).

**Notice** : these gems aren't very stable for the moment. You must be aware of that. 

## Installation and use

To use these gems, you should edit the `Gemfile` of your application and add the following line:

``` ruby
gem 'dojo-rails'
```

Then run the `bundle` command to install it. Now, inside your javascript assets, you can use dojo? If you want more information on how to set-up and use one of these gems in your application, please see [the wiki](https://github.com/robin850/dojo-rails/wiki).

Notice that `dojo-rails` provides both the base and full distribution of the toolkit. If you just the want the base distribution, in your js file, add:

```javascript
//= require dojo
```

And for the full version:

```javascript
//= require dojo/dojo
```

That's it! It may seem obvious but you can also use [CoffeeScript](http://coffeescript.org) in your files. Here an example of the [reference guide](http://dojotoolkit.org/reference-guide/1.8/):

```coffeescript
#= require dojo
require ["dojo/router", "dojo/dom", "dojo/fx", "dojo/domReady!"], (router, dom, fx) ->
  router.register "/articles/:id", (evt) ->
    alert "The article has the id " + evt[id]
  
  router.startup()

  greeting = dom.byId("greeting")
  greeting.innerHTML += " from Dojo!"

  fx.slideTo({
    top: 100,
    left: 200,
    node: greeting
  }).play()
```

### Troubleshooting

One of the worst problem when you use dojo-rails and Coffeescript together is that sometimes, Dojo defines functions which are reserved keyword in Coffeescript such as `then` with `dojo/request` or the `dojo/on` module that you will certainly name `on`. Except rename modules, there is no real solution such as for the `then` function. If you have a solution, **please let me know**!

## Usage with Asset Pipeline in Production

To use with production and asset pipeline from Rails 3.1 you will need to have the [djConfig](http://dojotoolkit.org/documentation/tutorials/1.8/dojo_config/) hash set before you load the dojo/dojo library

*This is critical for production mode because otherwise the require[ ] statements will not load libraries correctly*

Example contents of application.js
```coffeescript
//= require dojo_config
//= require dojo/dojo
```
Contents of dojo_config.js
```javascript
dojoConfig = {
  baseUrl: '/assets/dojo/'
};
```

## Special thanks

I want to thanks the [jquery-rails](http://github.com/rails/jquery-rails) project ; it helps me to release theses three projects. I would also thanks the [Ruby on Rails team](http://github.com/rails/) and its contributors. Thanks guys!

## Contribution

### Code

If you want to contribute to the code of the project to enhance a gem or the full suite, thanks ! You just have to :

* Fork the project
* Clone the repository on your local machine
* Create a new branch with `git checkout -b new_feature`
* Make changes and commit them
* `git push origin master`
* Open a new pull request

### Bugs and issues

If you found bug or if you have issues, please open a [new ticket](https://github.com/robin850/dojo-rails/issues/new) on the issue tracker. Thank you a lot!

## License

This project is released under the MIT license. Dojo Toolkit is available under either the terms of the modified BSD license or the Academic Free License version 2.1. Please [visit the official page](http://dojotoolkit.org/license) for further information.

Copyright (c) 2012 Robin Dupret

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
DEALINGS IN THE SOFTWARE.