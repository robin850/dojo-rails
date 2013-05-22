# Dojo with Ruby on Rails

I haven't found a good implementation of the [Dojo toolkit][dojotoolkit] library
for Ruby on Rails so I decided to release my own. This gem allows you to use the
full dojo suite in your [Ruby on Rails][rails] application. The project
is divided into several gems:

* **dojo-rails**
* [dijit-rails]
* [dojox-rails]

This repository used to host all three projects but they have now their own
repository. This one host Dojo itself (the base and full version).

**Notice** : these gems aren't very stable for the moment. You must be aware!

If you found bug or if you have issues, please open a [new ticket] on the issue
tracker.

## Installation and use

To use these gems, just edit your application's `Gemfile` and add the following:

~~~ruby
gem 'dojo-rails'
~~~

Then run the `bundle` command to install it. Now, inside your javascript assets,
you can use dojo.

Note that `dojo-rails` provides both the base and full distribution of the
toolkit. If you just the want the base distribution, in your js file, add:

~~~javascript
//= require dojo
~~~

And for the full version:

~~~javascript
//= require dojo/dojo
~~~

That's it! It may seem obvious but you can also use [CoffeeScript][coffeescript]
in your assets. Here's an example of the [reference guide]:

~~~coffeescript
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
~~~

### Troubleshooting

One of the worst problem when you use dojo-rails and Coffeescript is that
sometimes, Dojo defines functions which are reserved keyword in
Coffeescript such as `then` with `dojo/request` or the `dojo/on` module that you
will certainly name `on`. Except rename modules, there is no real solution such
as for the `then` function. If you have a solution, please let me know!

## Usage with Asset Pipeline in Production

To use Dojo in Production, you will need t configure assets path and maybe
other options. Please see the [dedicated page on the wiki][wiki] for further
information on this variable.

## Special thanks

I want to thanks the [jquery-rails] project ; it helps me to release theses
projects. I would also love to thank the [Ruby on Rails team][rails] and all
contributors!

## Contribution

Please see the [contribution guideline](contributing.md) of the project if
you want to contribute! Thanks :heart:!

## License

This project is released under the MIT license. Dojo Toolkit is available under
either the terms of the modified BSD license or the Academic Free License
version 2.1. Please [visit the official page](http://dojotoolkit.org/license)
for further information.

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

[dojotoolkit]: http://dojotoolkit.org/
[rails]: http://rubyonrails.org/
[dijit-rails]: https://github.com/robin850/dijit-rails
[dojox-rails]: https://github.com/robin850/dojox-rails
[coffeescript]: http://coffeescript.org
[new ticket]: https://github.com/robin850/dojo-rails/issues/new
[reference guide]: http://dojotoolkit.org/reference-guide/1.8/
[wiki]: https://github.com/robin850/dojo-rails/wiki/Configuration-with-dojoConfig
