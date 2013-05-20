# Contributing

Please refer to this file if you want to contribute to this project.

## Submit a patch

To submit a patch, you just have to:

* Fork the project
* Clone the fork on your local machine
* Create a new branch with `git checkout -b new_feature`
* Make changes and commit them
* `git push origin new_feature`
* Open a new pull request
* Thanks!

## Update the toolkit version

If you want to update the toolkit version keep this in mind please:

* Never update to a new major version if there is no patch (e.g: 1.9.0)
* If it's a major release, enhance your commit message with some notes about this
version (e.g major incompatibilities or major new feature)
* Be sure to update Dojo::VERSION as well
* Use bamboo (read further)

Since Rails seperates each kind of asset into seperate directories, the update
to a newer version can be pretty hard so I decided to write a little script
which is call [Bamboo] to simplify this process.

[Bamboo]: https://gist.github.com/robin850/5325645
