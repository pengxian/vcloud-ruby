require 'cgi'
require 'open-uri'
require 'faraday'
require 'json'
require 'base64'
require 'core_extend'
require 'vcloud/version'
require 'vcloud/configuration'
require 'vcloud/sign'
require 'vcloud/service'
require 'vcloud/service/video'

module Vcloud
  class << self

    attr_writer :debug_mode

    def debug_mode?
      @debug_mode.nil? ? true : !!@debug_mode
    end
  end
end
