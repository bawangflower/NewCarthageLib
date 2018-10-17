
Pod::Spec.new do |s|
  s.name             = 'DLIMLib'
  s.version          = '0.1.0'
  s.summary          = 'IM Service Library.'


  s.homepage         = 'https://git.hzdlsoft.com/ReactNativeLib/DLIM'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bawangflower' => 'flower258@dingtalk.com' }
  s.source           = { :git => 'https://git.hzdlsoft.com/ReactNativeLib/DLIM.git'}


  s.ios.deployment_target = '9.0'

  s.source_files = 'lib/ios/DLIMLib/**/**/**/*.{h,m}'

  s.dependency 'NIMKit'
end
