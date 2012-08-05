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

That's it! You can now start make javascript code using the cool Dojo toolkit library. 

## Special thanks

I want to thanks the [jquery-rails](http://github.com/rails/jquery-rails) project. It helps me to release this project!
I also want to thanks the [Ruby on Rails team](http://github.com/rails/) and its contributors. Thanks guys!