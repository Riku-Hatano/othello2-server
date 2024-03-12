require "socket"

begin
  server = TCPServer.open(3030)
  puts("listning the client...")
  socket = server.accept
  puts("connected to client!")
rescue => e
  puts e
ensure
  puts("done")
  socket.close
  server.close
end
