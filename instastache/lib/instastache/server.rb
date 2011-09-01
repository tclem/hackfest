module Instastache
  class Server < Sinatra::Base
   
    configure do
      
      set :client_id, 'f24e46059ab343b9acbe44db05480f3c'
      set :client_secret, '4547d32d348f488983005989a52d09bb'
      
      Instagram.configure do |config|
        config.client_id = client_id
        config.client_secret = client_secret
      end
      
    end
   
    get '/' do
      Instagram.media_popular.map do |image|
        puts image.inspect
        debugger
        Instastache.mustachify(image.url)
      end.join('<br />')
    end
    
  end
end