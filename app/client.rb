class Client < AFHTTPClient

  def self.client
    c = Client.alloc.initWithBaseURL(NSURL.URLWithString("http://localhost:3000"))
    reach = lambda {|s| puts "got a status change #{s}"}
    c.setReachabilityStatusChangeBlock(reach)

    return c
  end

end
