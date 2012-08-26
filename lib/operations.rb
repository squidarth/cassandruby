module Cassandruby
  module Operations
    def insert(family, key, hash)
      puts "inserting #{hash} into #{key} in #{family}"
    end

    def remove(family, key)
      puts "removing #{key} from #{family}"

    end
  
    def get(family, key)
      puts "getting #{key} from #{family}"


    end 
  end
end
