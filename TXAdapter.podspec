Pod::Spec.new do |s|
  s.name         = 'TXAdapter'
  s.version      = '0.0.2'
  s.summary      = 'iOS轻量级屏幕以及字体适配，支持iPhoneX、XS、XSMax、XR等机型适配。'
  s.description  = <<-DESC
			iOS轻量级屏幕以及字体适配，支持iPhoneX、XS、XSMax、XR等机型适配。
			使用方便、操作简单、集成快捷等优点
                   DESC
  s.homepage     = 'https://github.com/xtzPioneer/TXAdapter'
  s.license      = 'MIT'
  s.author       = { 'zhangxiong' => 'xtz_pioneer@163.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/xtzPioneer/TXAdapter.git', :tag => s.version.to_s }
  s.source_files = 'TXAdapter/**/*.{h,m}'
  s.requires_arc = true
  s.platform     = :ios, '8.0'
end