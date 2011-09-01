require "instastache/version"

require 'sinatra'
require 'instagram'

require "instastache/server"

module Instastache
  def self.mustachify(url)
    "http://mustachify.me/?src=" + url
  end
end
