Pod::Spec.new do |spec|
  spec.name         = 'JDResources'
  spec.version      = '0.0.1'
  spec.summary      = 'HsResource'
  spec.homepage     = "https://github.com/wangjindong"
  spec.license      = "MIT"
  spec.author       = { "wangjindong" => "419591321@qq.com" }
  spec.social_media_url   = "http://twitter.com/HsResource"
  spec.source = {:svn => '', :tag => ''}

  #spec.resource = 'Resources/**'
  spec.resources = ['Assets.xcassets', 'other/**/*']
  spec.requires_arc = true
  spec.ios.deployment_target = '7.0'

end