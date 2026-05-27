#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_callkeep.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'callkeep'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'callkeep/Sources/callkeep/**/*.{h,m}'
  s.public_header_files = 'callkeep/Sources/callkeep/include/**/*.h'
  s.dependency 'Flutter'
  s.ios.framework  = 'AVFoundation', 'CallKit', 'Intents', 'PushKit'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
