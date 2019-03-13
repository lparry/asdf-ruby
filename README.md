# asdf-ruby

A better Ruby plugin for [asdf](https://github.com/asdf-vm/asdf) version manager
(at least for macOS users)

## Install

```
asdf plugin-add ruby https://github.com/lparry/asdf-ruby.git
```

Please make sure you have brew installed before trying to install Ruby.

## Use

Check [asdf](https://github.com/asdf-vm/asdf) readme for instructions on how to install & manage versions of Ruby.

Under the hood, this fork of asdf-ruby uses [ruby-install](https://github.com/postmodern/ruby-install) to build and install Ruby, check its [README](https://github.com/postmodern/ruby-install/blob/master/README.md) for more information.

## Default gems

asdf-ruby can automatically install a set of default gems right after
installing a Ruby version. To enable this feature, provide a
`$HOME/.default-gems` file that lists one gem per line, for example:

```
bundler
pry
gem-ctags
```

## Migrating from another Ruby version manager

### `.ruby-version` file

asdf uses the `.tool-versions` for auto-switching between software versions.
To ease migration, you can have it read an existing `.ruby-version` file to
find out what version of Ruby should be used. To do this, add the following to
`$HOME/.asdfrc`:

    legacy_version_file = yes

If you are migrating from version manager that supported fuzzy matching in `.ruby-version`
like [rvm](https://github.com/rvm/rvm) or [chruby](https://github.com/postmodern/chruby),
note that you might have to change `.ruby-version` to include full version (e.g. change `2.6` to `2.6.1`).
