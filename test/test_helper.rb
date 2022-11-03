$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

print "[*] loading the test helper..."

require "tora"
require "rack/test"
require "minitest/autorun"