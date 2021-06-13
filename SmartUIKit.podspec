Pod::Spec.new do |s|
    s.name                    = 'SmartUIKit'
    s.version                 = '1.0.0'
    s.summary                 = 'For ease in use of UIKit'
    s.homepage                = 'https://github.com/ranvirp/SmartUIKit-Pod/'

    s.author                  = { 'Ranvir Prasad' => 'ranvir.prasad@gmail.com' }
    s.license                 = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform                = :ios, "13.0"
    s.source                  = { :http => 'https://github.com/ranvirp/SmartUIKit-Pod/raw/main/SmartUIKitFramework.zip' }
    #s.source = {:path => './SketchToUIKitFramework.zip'}
    s.ios.deployment_target   = '13.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.ios.vendored_frameworks = 'SmartUIKit.framework'
    s.dependency 'Kingfisher','~>5.0'
  s.dependency 'SnapKit'
  s.dependency  'SQLite.swift', '~> 0.12.0'
end
