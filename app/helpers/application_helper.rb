module ApplicationHelper
  
  def getIP
    return request.remote_ip
  end
  
  def getInfo
  return UserAgent.parse(request.env['HTTP_USER_AGENT'])
  end
  
end
