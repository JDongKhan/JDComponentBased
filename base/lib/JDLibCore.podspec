Pod::Spec.new do |spec|
  spec.name         = 'JDLibCore'
  spec.version      = '0.0.1'
  spec.summary      = 'JD'
  spec.homepage     = "https://github.com/wangjindong"
  spec.license      = "MIT"
  spec.author       = { "wangjindong" => "419591321@qq.com" }
  spec.social_media_url   = "http://twitter.com/hundsun"
  spec.source = {:svn => '', :tag => ''}

  spec.platform = :ios,'8.0'

  #spec.source_files = 'Framework/**/*.{h,m,mm}'
  #spec.resource = 'Framework/**/*.{png,xib,plist}'

  spec.requires_arc = true
  spec.ios.deployment_target = '8.0'
  
  spec.public_header_files = 'Framework/**/*.h'

  spec.vendored_libraries  = 'Libs/**/*.a'
  spec.vendored_frameworks  = 'Libs/**/*.framework'

  #依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency

end
