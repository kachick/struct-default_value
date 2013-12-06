# coding: us-ascii

$VERBOSE = true

require_relative '../lib/struct/default_value'

class Foo < Struct.new :name, :birth_time
  default :name, '!BAR!'
  default(:birth_time) {Time.now}
end

foo = Foo.new
p foo.name        #=> "!BAR!"
p foo.birth_time  #=> time at generated
