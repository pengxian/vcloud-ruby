# Vcloud

  [网易云点播](http://vcloud.163.com/vod) ruby sdk.

## Installation

Add this line to your application's Gemfile:

    gem 'vcloud', github: 'pengxian/vcloud-ruby'

And then execute:

    $ bundle install

## Usage

```ruby
# rails_app/config/initializers/vcloud.rb
Vcloud.configure do |config|
  config.app_key = ''
  config.app_secret = ''
  config.api_host = ''
end
```

### 获取视频信息
```ruby
  video = Vcloud::Service::Video.new
  video.vid = 1
  video.get_info
```
输出参数

|参数|类型|说明|
|---|---|---|
|code|Int|状态码|
|videoName|String|视频的名称|
|vid|Long|视频Id|
|status|Int|视频的状态，10表示初始，20表示失败，30表示处理中，40表示成功，50表示屏蔽|
|description|String|视频的描述信息|
|completeTime|Int|转码完成时间|
|duration|Int|视频播放时长（单位：秒）|
|durationMsec|Int|视频播放时长（单位：毫秒）|
|width|String|视频宽度，默认为"0"|
|height|String|视频高度，默认为"0"|
|typeId|Int|视频所属分类Id|
|typeName|String|视频所属分类名称|
|snapshotUrl|String|视频封面截图URL地址|
|origUrl|String|原始视频的播放地址|
|downloadOrigUrl|String|原始视频的下载地址|
|initialSize|Long|原始视频文件大小（单位：字节）|
|sdMp4Url|String|流畅Mp4视频格式文件播放地址|
|downloadSdMp4Url|String|流畅Mp4视频格式文件下载地址|
|sdMp4Size|Int|流畅Mp4视频格式文件的大小（单位：字节）|
|sdMp4Width|String|流畅Mp4视频宽度，默认为"0"|
|sdMp4Height|String|流畅Mp4视频高度，默认为"0"|
|hdMp4Url|String|标清Mp4视频格式文件播放地址|
|downloadHdMp4Url|String|标清Mp4视频格式文件下载地址|
|hdMp4Size|Int|标清Mp4视频格式文件的大小（单位：字节）|
|hdMp4Width|String|标清Mp4视频宽度，默认为"0"|
|hdMp4Height|String|标清Mp4视频高度度，默认为"0"|
|shdMp4Url|String|高清Mp4视频格式文件播放地址|
|downloadShdMp4Url|String|高清Mp4视频格式文件下载地址|
|shdMp4Size|Int|高清Mp4视频格式文件的大小（单位：字节）|
|shdMp4Width|String|高清Mp4视频宽度，默认为"0"|
|shdMp4Height|String|高清Mp4视频高度，默认为"0"|
|sdFlvUrl|String|流畅Flv视频格式文件播放地址|
|downloadSdFlvUrl|String|流畅Flv视频格式文件下载地址|
|sdFlvSize|Int|流畅Flv视频格式文件的大小（单位：字节）|
|sdFlvWidth|String|流畅Flv视频宽度，默认为"0"|
|sdFlvHeight|String|流畅Flv视频高度，默认为"0"|
|hdFlvUrl|String|标清Flv视频格式文件播放地址|
|downloadHdFlvUrl|String|标清Flv视频格式文件下载地址|
|hdFlvSize|Int|标清Flv视频格式文件的大小（单位：字节）|
|hdFlvWidth|String|标清Flv视频宽度，默认为"0"|
|hdFlvHeight|String|标清Flv视频高度，默认为"0"|
|shdFlvUrl|String|高清Flv视频格式文件播放地址|
|downloadShdFlvUrl|String|高清Flv视频格式文件下载地址|
|shdFlvSize|Int|高清Flv视频格式文件的大小（单位：字节）|
|shdFlvWidth|String|高清Flv视频宽度，默认为"0"|
|shdFlvHeight|String|高清Flv视频高度，默认为"0"|
|sdHlsUrl|String|流畅Hls视频格式文件播放地址|
|downloadSdHlsUrl|String|流畅Hls视频格式文件下载地址|
|sdHlsSize|Int|流畅Hls视频格式文件的大小（单位：字节）|
|sdHlsWidth|String|流畅Hls视频宽度，默认为"0"|
|sdHlsHeight|String|流畅Hls视频高度，默认为"0"|
|hdHlsUrl|String|标清Hls视频格式文件播放地址|
|downloadHdHlsUrl|String|标清Hls视频格式文件下载地址|
|hdHlsSize|Int|标清Hls视频格式文件的大小（单位：字节）|
|hdHlsWidth|String|标清Hls视频宽度，默认为"0"|
|hdHlsHeight|String|标清Hls视频高度，默认为"0"|
|shdHlsUrl|String|高清Hls视频格式文件播放地址|
|downloadShdHlsUrl|String|高清Hls视频格式文件下载地址|
|shdHlsSize|Int|高清Hls视频格式文件的大小（单位：字节）|
|shdHlsWidth|String|高清Hls视频宽度，默认为"0"|
|shdHlsHeight|String|高清Hls视频高度，默认为"0"|
|createTime|Int|视频上传时间（单位：毫秒）|
|updateTime|Int|视频更新时间（单位：毫秒）|
|msg|String|错误信息|

## Contributing

1. Fork it ( https://github.com/pengxian/vcloud/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
