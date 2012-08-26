module Cassandruby
  extend Utils
  
  module Utils
    def generate_id(family)
      resp = self.get(family, "count")
      count = resp["val"]      
      self.insert(family, "count", {val: count + 1 })
      count + 1
    end
  end
end
