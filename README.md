struct-default_value
====================

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org for releasing valuable namespace for others***

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

* Ruby 2.5 or later

License
-------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
