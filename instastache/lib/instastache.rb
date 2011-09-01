# $LOAD_PATH.unshift(File.expand_path('./lib', File.dirname(__FILE__)))

require 'sinatra'
require 'erb'
require 'instagram'


module Instastache
  def self.mustachify(url)
    "http://mustachify.me/?src=" + url
  end
end
