module ApplicationHelper
  
  def getIP
    return request.remote_ip
  end

def getInternalIP
    return request.ip
end

end
