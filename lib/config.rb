require 'pry'

module Cassandruby
  module Config
    extend self
    
    binding.pry

    def keyspace=(keyspace)
      @keyspace = keyspace 
    end

    def host=(host)
      @host = host
    end

    def port=(port)
      @port = port
    end  
  end
end
