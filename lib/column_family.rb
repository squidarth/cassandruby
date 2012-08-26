module Cassandruby
  module ColumnFamily
    module ColumnFamilyClassMethods
      def field(name, options = {})
        define_method name.to_sym do
          instance_variable_get(":@#{name}")
        end
      
        define_method "#{name}=".to_sym do |val|
          instance_variable_set(":@#{name}", val)
        end 
      end 
    end 
    
    def self.included(base)
      base.extend(ColumnFamilyClassMethods)
    end 
    
    def name
      puts @name
    end    
  end
end
