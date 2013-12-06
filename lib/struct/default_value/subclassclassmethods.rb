# coding: us-ascii

class Struct; module Default_Value

  module SubclassClassMethods

    Default = Struct.new :value, :lazy do
      def lazy?
        !! lazy
      end

      def force?
        ! lazy?
      end

      def get(instance)
        lazy? ? (lazy.call instance) : value
      end
    end

    private_constant :Default

    private

    # @param [Symbol, String, #to_sym] autonym
    # @return [nil]
    # @yield [instance]
    # @yieldparam [Struct] instance
    # @yieldreturn [nil]
    def default(autonym, *values, &block)
      autonym = autonym.to_sym
      
      if respond_to? :alias_member
        if @aliases.has_key? autonym
          raise NameError
        end
      else

        unless members.include? autonym
          raise NameError, "#{members} are not included #{autonym}"
        end
      end
        
      value = values.first
      case values.length
      when 0
        if block_given?
          @defaults[autonym] = Default.new nil, block
        else
          raise ArgumentError
        end
      when 1
        if block_given?
          raise ArgumentError
        else
          @defaults[autonym] = Default.new value
        end
      else
        raise ArgumentError
      end

      nil
    end

    def _default_value_for_index(instance, index)
      autonym = members.fetch index

      @defaults.has_key?(autonym) ? @defaults[autonym].get(instance) : nil
    end
  
  end

end; end
