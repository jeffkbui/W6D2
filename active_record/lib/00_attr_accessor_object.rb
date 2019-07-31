class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |argument|
      define_method(argument) do 
        instance_variable_get("@#{argument}")
      end

      define_method("#{argument}=") do |new_value|
        instance_variable_set("@#{argument}", new_value)
      end
    end
  end
end
