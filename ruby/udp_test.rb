module Hello
  class UDP
    def execute()
      server = Thread.new do
        require 'socket'
        host = 'localhost'
        port = 8082 
        s = UDPSocket.new
        s.bind(nil, port)
        5.times do |i|
          s.send(i.to_s, 0, host, port)
          text, sender = s.recvfrom(16)
          puts sender.join('|')
          puts "  sent #{text}"
        end
      end
      server.join
    end
  end
end
