# bourbon-watcher
Docker container for watching and processing Sass source code changes to CSS using Bourbon

# Bourbon "watcher" docker container

Compiles sass or scss files using [Bourbon, the lightweight mixin library for Sass](http://bourbon.io/).

The docker container, based on Ubuntu Xenial, contains [Neat Grids](https://neat.bourbon.io/) and [Bitters](http://bitters.bourbon.io/).

It's intended to run on a development machine. Every time the Sass source code gets updated, it will compile css to the css output folder.
