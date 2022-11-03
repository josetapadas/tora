# frozen_string_literal: true

require_relative "tora/version"

module Tora
  class Error < StandardError; end
  class Application
    def call(env)
      `echo debug > debug.log`
      [200, { "Content-Type" => "text/html"}, ["Welcome to Tora!"]]
    end
  end
end
