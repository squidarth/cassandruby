module Cassandruby
  module Config
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
