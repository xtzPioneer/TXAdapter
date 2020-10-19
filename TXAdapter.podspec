#
# Be sure to run `pod lib lint TXAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TXAdapter'
  s.version          = '0.1.2'
  s.summary          = 'iOS轻量级屏幕以及字体适配，支持iPhoneX、XS、XSMax、XR、11、SE、12mini、12、12Pro、12ProMax等机型适配。'
  s.description      = <<-DESC
  iOS轻量级屏幕以及字体适配，支持iPhoneX、XS、XSMax、XR、11、SE、12mini、12、12Pro、12ProMax等机型适配。
  使用方便、操作简单、集成快捷等优点。
                       DESC
  s.homepage         = 'https://github.com/xtzPioneer/TXAdapter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张雄' => 'xtz_pioneer@icloud.com' }
  s.source           = { :git => 'https://github.com/xtzPioneer/TXAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'TXAdapter/Classes/**/*.{h,m}'
end
