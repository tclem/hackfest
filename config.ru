$LOAD_PATH.unshift(File.dirname(__FILE__))

require "server"

run Instastache::Server
