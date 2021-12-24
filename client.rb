require 'socket'

hostname = 'localhost'
port = 2000

gender = ARGV.first
height = ARGV.last

socket = TCPSocket.open(hostname, port)

socket.puts gender
socket.puts height

while line = socket.gets
  puts line
end
socket.close