module Cassandruby
  module Utils
    def generate_id(family)
      resp = self.get(family, "count")
      count = 0 if resp.nil? 
      count ||= resp["val"]      
      self.insert(family, "count", {val: count + 1 })
      count + 1
    end
  end

 extend Utils 
end
