module Vcloud
  module Sign

    #生成header数据
    def self.gen_headers
      app_key = Vcloud.config.app_key
      app_secret = Vcloud.config.app_secret
      nonce = Vcloud::Sign.random_str(32)
      time_stamp = Time.now.to_i
      signature = Digest::SHA1.hexdigest("#{app_secret}#{nonce}#{time_stamp}")
      {
          'AppKey' => app_key,
          'Nonce' => nonce,
          'CurTime' => time_stamp,
          'CheckSum' => signature
      }
    end

    #生成随机字符串
    def self.random_str(length)
      seed = '0123456789abcdefjhijklmnopqrstuvwxyz'
      length.times.inject('') { |acc, t|
        acc+ seed[Random.rand(seed.length)]
      }
    end
  end
end
