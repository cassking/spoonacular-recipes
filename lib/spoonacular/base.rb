module Spoonacular

  class Base
#ALL OTHERS WILL INHERIT FROM THIS BASE CLASSS
#ATTRIBUTE ERRORS
# AND AN INITIALIZATION METHOD common to all the spoonacular classes

    attr_accessor :errors

    def initialize(args ={})
      args.each do | name, value |
        attr_name = name.to_s.underscore
        send("#{attr_name}=", value) if respond_to("#{attr_name}=")
      end
    end
  end
end
