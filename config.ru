$LOAD_PATH << File.join(File.dirname(__FILE__), *%w[lib])

require 'boot'
run Sinatra::Application
