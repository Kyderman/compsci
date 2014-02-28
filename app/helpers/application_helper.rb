module ApplicationHelper
  
  def getIP
    return request.remote_ip
  end

 
  def local_ip
  return request.env['REMOTE_ADDR']
  end
  
  def ip
  return request.remote_addr
  end
end
