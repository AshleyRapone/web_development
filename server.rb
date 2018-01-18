# This program echos back whatever the browser is asking for back to the screen
require "socket"

server = TCPServer.new("localhost", 3003)
loop do
  client = server.accept

  request_line = client.gets
  puts request_line

  client.puts request_line
  client.close
end

=begin
The "socket" library includes classes used to create servers and interact
with servers and perform other types of networking tasks

We create a server via instantiating the TCPServer object and we are creating
a server on "localhost". The server will accept requests that go to localhost
and the port that  is being used is 3003

When someone makes a request the accept method accepts that call and opens
a connection to the client which is stored in the client local variable

gets gets the first line of the request (ususally GET or POST) which gets stored
in the local variable request_line. 

puts request_line outputs the request into the console

client.puts request_line is so the client can see it in the web browser

close closes the connection
=end
