struct-default_value
====================

[![Build Status](https://secure.travis-ci.org/kachick/struct-default_value.png)](http://travis-ci.org/kachick/struct-default_value)
[![Gem Version](https://badge.fury.io/rb/struct-default_value.png)](http://badge.fury.io/rb/struct-default_value)

Description
------------

Struct will have default values for each member.

Usage
------

### Overview

```ruby
require 'struct/default_value'

class Foo < Struct.new :name, :birth_time
  default :name, '!BAR!'
  default(:birth_time) {Time.now}
end

foo = Foo.new
foo.name        #=> "!BAR!"
foo.birth_time  #=> time at generated
```

Requirements
------------

* [Ruby 2.5 or later](http://travis-ci.org/#!/kachick/struct-default_value)

Install
-------

```bash
$ gem install struct-default_value
```

Link
----

* [Home](http://kachick.github.com/struct-default_value)
* [code](https://github.com/kachick/struct-default_value)
* [API](http://kachick.github.com/struct-default_value/yard/frames.html)
* [issues](https://github.com/kachick/struct-default_value/issues)
* [CI](http://travis-ci.org/#!/kachick/struct-default_value)
* [gem](https://rubygems.org/gems/struct-default_value)

License
-------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
