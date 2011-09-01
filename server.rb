require 'sinatra'
require 'erb'

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
      @action = params[:action] ||= 'girl'
      @urls = Instagram.tag_recent_media(@action).data.map do |i|
      # @urls = Instagram.media_popular.map do |i|
        url = i[:images][:standard_resolution][:url]
        Instastache.mustachify(url)
      end
      erb :index
    end

  end
end
