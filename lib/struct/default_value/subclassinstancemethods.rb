# coding: us-ascii

class Struct; module Default_Value
  
  module SubclassInstanceMethods
  
    def initialize(*values)
      super
      values.length.upto(length - 1) do |idx|
        self[idx] = self.class.__send__ :_default_value_for_index, self, idx
      end
    end

  end

end; end
