module Cassandruby
  module ColumnFamily
    module ColumnFamilyClassMethods
      def field(name, options = {})
        @fields = {} if @fields.nil?
        @fields[name] = true 
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
