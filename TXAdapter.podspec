Pod::Spec.new do |s|
  s.name         = 'TXAdapter'
  s.version      = '0.0.1'
  s.summary      = '适配iOS屏幕以及字体'
  s.description  = <<-DESC
			适配iOS屏幕以及字体，兼容iPhone8等设备。
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