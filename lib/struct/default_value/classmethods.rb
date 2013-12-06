# coding: us-ascii

class Struct; module Default_Value

  module ClassMethods
    
    private
    
    def inherited(cls)
      super
      
      cls.class_eval do
        extend Default_Value::SubclassClassMethods
        include Default_Value::SubclassInstanceMethods

        # [Hash] autonym[Symbol] => default[SubclassClassMethods::Default]
        @defaults = {}
      end
    end
    
  end

end; end
