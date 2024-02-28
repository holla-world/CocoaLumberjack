Pod::Spec.new do |s|
  s.name             = 'CocoaLumberjack'
  s.version          = '3.8.5'
  s.summary          = 'A fast & simple, yet powerful & flexible logging framework for macOS, iOS, tvOS and watchOS.'
  s.description      = <<-DESC
                       CocoaLumberjack is a fast & simple, yet powerful & flexible logging framework for macOS, iOS, tvOS, and watchOS. It is similar in concept to other popular logging frameworks such as log4j, yet is designed specifically for Objective-C, and takes advantage of features such as multi-threading, Grand Central Dispatch (if available), lockless atomic operations, and the dynamic nature of the Objective-C runtime.
                       DESC
  s.homepage         = 'https://github.com/CocoaLumberjack/CocoaLumberjack'
  s.license          = { :type => 'BSD' }
  s.author           = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source           = { :git => 'https://github.com/holla-world/CocoaLumberjack.git', :tag => '3.8.5' }
  s.cocoapods_version = '>= 1.7.0'
  s.swift_version    = '5.8'
  s.platforms        = {
    :ios => '12.0',
  }
  s.preserve_paths   = [
    'README.md',
    'LICENSE',
    'CHANGELOG.md'
  ]
  s.default_subspec  = 'Core'
  
  s.subspec 'Core' do |core|
    core.source_files           = 'Sources/CocoaLumberjack/**/*.{h,m}'
    core.private_header_files  = 'Sources/CocoaLumberjack/DD*Internal.{h}'
    core.resource_bundles     = {
        'CocoaLumberjackPrivacy' => ['Sources/CocoaLumberjack/PrivacyInfo.xcprivacy']
    }
  end
  
  s.subspec 'Swift' do |swift|
    swift.dependency 'CocoaLumberjack/Core'
    swift.source_files = [
      'Sources/CocoaLumberjackSwift/**/*.swift',
      'Sources/CocoaLumberjackSwiftSupport/include/**/*.{h}'
    ]
  end
end

