require 'pry'

module Cassandruby
  module Config
    extend self
  
    %w(keyspace host port).each do |meth|
      define_method "#{meth}=".to_sym do |param|
        self.instance_variable_set("@#{meth}".to_sym,param)
      end
    
      define_method meth.to_sym do
        instance_variable_get("@#{meth}".to_sym)
      end
    end  
  end
end
