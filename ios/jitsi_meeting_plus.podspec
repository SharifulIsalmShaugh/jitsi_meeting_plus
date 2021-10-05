#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint jitsi_meeting_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'jitsi_meeting_plus'
  s.version          = '0.0.1'
  s.summary          = 'Jitsi Meet Plus Plugin - A plugin for integrating open source Jitsi Meet API in flutter. Jitsi Meet is secure, fully featured and allows completely free video conferencing made with https://jitsi.org, a collection of open source projects'
  s.description      = <<-DESC
Jitsi Meet Plus Plugin - A plugin for integrating open source Jitsi Meet API in flutter. Jitsi Meet is secure, fully featured and allows completely free video conferencing made with https://jitsi.org, a collection of open source projects
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'JitsiMeetSDK', '3.8.1'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
