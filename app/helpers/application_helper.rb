module ApplicationHelper
  
  def getIP
    return request.remote_ip
  end

  require 'socket'
 
  def local_ip
  orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  # turn off reverse DNS resolution temporarily
 
  UDPSocket.open do |s|
    s.connect '64.233.187.99', 1
    s.addr.last
  end
  ensure
  Socket.do_not_reverse_lookup = orig
  end
  
  def ip
  return request.remote_addr
  end
end
