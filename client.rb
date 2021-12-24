require 'socket'

hostname = 'localhost'
port = 2000

gender = ARGV.first
height = ARGV.last

socket = TCPSocket.open(hostname, port)

socket.puts gender
socket.puts height

puts socket.gets

socket.close