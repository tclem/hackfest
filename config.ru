# $LOAD_PATH.unshift(File.expand_path('./lib', File.dirname(__FILE__)))

require 'instastache/lib/instastache'
require "server"

run Instastache::Server
