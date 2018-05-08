require 'active_support/configurable'

module Vcloud
  class << self
    def configure(&block)
      yield @config ||= Vcloud::Configuration.new
    end

    def config
      @config
    end
  end

  class Configuration
    include ActiveSupport::Configurable
    config_accessor :app_key, :app_secret, :api_host
  end

  configure do |config|
    config.app_key = ''
    config.app_secret = ''
    config.api_host = ''
  end
end
