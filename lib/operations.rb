module Cassandruby
  module Operations
    def insert(family, key, hash)
      self.client.insert(family, key, hash) 
    end

    def remove(family, key)
      self.client.remove(family, key)
    end
  
    def get(family, key)
      self.client.get(family, key)
    end 
  end
end
