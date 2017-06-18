# require 'net/http'
# require 'json'

# def create_agent
#     uri = URI('http://api.nsa.gov:1337/agent')
#     http = Net::HTTP.new(uri.host, uri.port)
#     req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
#     req.body = {name: 'John Doe', role: 'agent'}.to_json
#     res = http.request(req)
#     puts "response #{res.body}"
# rescue => e
#     puts "failed #{e}"
# end