require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "infobip-mobile-messaging-react-native-plugin"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  infobip-mobile-messaging-react-native-plugin
                   DESC
  s.homepage     = "https://github.com/naved971/mobile-messaging-react-native-plugin.git"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => 'https://github.com/naved971/mobile-messaging-react-native-plugin.git' }
  s.swift_version = '5'
  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "MobileMessaging/Core"

end

