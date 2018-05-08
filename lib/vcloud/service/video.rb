module Vcloud
  module Service
    class Video < Vcloud::Service::Model
      attr_accessor :vid

      #获取视频信息
      def get_info
        post = {uri: Vcloud::Service::API_URI[:VIDEO_GET_INFO],
                params: optional_params({vid: self.vid})
        }
        Vcloud::Service.req_post(post,'json',true)
      end

    end
  end
end
