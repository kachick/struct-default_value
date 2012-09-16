$VERBOSE = true

require 'test/unit'
require_relative '../lib/struct/default_value'

class Test_Struct_Default_Value < Test::Unit::TestCase

  class Foo < Struct.new :name, :birth_time
    default :name, '!BAR!'
    default(:birth_time) {Time.now}
  end

  def test_default_value
    foo = Foo.new
    assert_equal '!BAR!', foo.name
    assert_instance_of Time, foo.birth_time

    foo = Foo.new 'foo'
    assert_equal 'foo', foo.name
    assert_instance_of Time, foo.birth_time

    foo = Foo.new 'foo', 'bar'
    assert_equal 'foo', foo.name
    assert_equal 'bar', foo.birth_time
  end

  def test_normaly
    cls = Struct.new :foo
    assert_equal nil, cls.new.foo
  end

  def test_mix_1
    cls = Struct.new :foo, :bar do
      default(:bar) {|_|_.foo.upcase}
    end

    foo = cls.new '_foo_'
    assert_equal '_foo_', foo.foo
    assert_equal '_FOO_', foo.bar
  end

  def test_mix_2
    cls = Struct.new :foo, :bar do
      default :foo, 999
    end

    foo = cls.new
    assert_equal 999, foo.foo
    assert_equal nil, foo.bar
  end

end

