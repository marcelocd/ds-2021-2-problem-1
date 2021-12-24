require 'socket'

port = 2000

def ideal_weight gender, height
  case gender
  when 'f'
    return ((62.1 * height) - 44.7).round(3)
  when 'm'
    return ((72.7 * height) - 58).round(3)
  else
    return 'Invalid gender or height'
  end
end

server = TCPServer.open(port)    
loop {                           
  client = server.accept

  gender = client.gets.strip
  height = (client.gets.strip).to_f

  client.puts ideal_weight(gender, height)
  client.close                  
}