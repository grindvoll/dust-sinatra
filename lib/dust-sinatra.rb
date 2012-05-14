require "dust-sinatra/version"
require "dust-sinatra/sinatra/helpers.rb"
require "dust-sinatra/sinatra/dust_template.rb"
require "dust-sinatra/sinatra/base.rb"

module Dust

  class Config
    attr_accessor :template_root
  end

  def self.config
    @@config ||= Config.new
  end

  def self.configure
    yield self.config
  end

end
