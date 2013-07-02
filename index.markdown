---
layout: default
title: Index
---

# Dojo with Ruby on Rails

Dojo-rails is a gem which aims to provide a super simple way to use the
[Dojo Toolkit](http://dojotoolkit.org/) javascript library with Ruby on Rails.
This site only contains a super simple blog with the new releases and the news
about the project such as the upcoming features, etc. You can quickly set up
this gem in your Rails application adding these lines to your Gemfile:

~~~~ ruby
gem 'dojo-rails', '~> 0.14.0'

# Optionally
gem 'dijit-rails', '~> 0.14.0'
gem 'dojox-rails', '~> 0.14.0'
~~~~

Then run `bundle install` to install it!

You can now use Dojo's assets in your application, just add a `//= require dojo`
statement at the very top of your javascript file.

Dojo-rails is an open source project. It's released under the terms of the MIT
license. Dojo Toolkit is available under either the terms of the modified BSD
license or the Academic Free license.

## Further reading

* [README file](https://github.com/robin850/dojo-rails#readme)
* [Wiki](https://github.com/robin850/dojo-rails/wiki)
* [Dojo Toolkit documentation](http://dojotoolkit.org/documentation)

## Related projects

* [dijit-rails](https://github.com/robin850/dijit-rails)
* [dojox-rails](https://github.com/robin850/dojox-rails)

## Blog posts

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ site.base-url }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
