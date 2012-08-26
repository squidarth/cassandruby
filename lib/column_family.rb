module Cassandruby
  module ColumnFamily
    module ColumnFamilyClassMethods
      def family
        self.to_s.to_sym 
      end 
      
      def find(key)
        resp = Cassandruby.get(self.to_s.to_sym, key)
        obj = self.new 
        return nil if resp.empty? 
        resp.each do |k,v|
          obj.instance_variable_set("@#{k}".to_sym, v)      
        end 
        obj 
      end 
      
      def field(name, options = {})
        define_method name.to_sym do
          instance_variable_get("@#{name}".to_sym)
        end
      
        define_method "#{name}=".to_sym do |val|
          instance_variable_set("@#{name}".to_sym, val)
        end 
      end 
    end 
    
    def self.included(base)
      base.extend(ColumnFamilyClassMethods)
    end 

    unless respond_to? :id= 
      def id=(id)
        instance_variable_set(:@id, id)  
      end 
    end 
   
    unless respond_to? :id 
      def id
        instance_variable_get(:@id)
      end 
    end

    def save
      #case object has already been saved 
      self.id ||= Cassandruby.generate_id(family)
      Cassandruby.insert(self.class.family, self.id, self.to_hash)
    end 
 
    def destroy
      raise Exception unless self.id.present?
      Cassandruby.remove(self.class.family, self.id)
    end 
    
    def to_hash
      hash = {}
      self.instance_variables.each {|var| hash[var] = self.instance_variable_get("@#{var.to_s}".to_sym)}
      hash 
    end 
  end
end
