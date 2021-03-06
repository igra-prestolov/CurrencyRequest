#
# Be sure to run `pod lib lint CurrencyRequest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CurrencyRequest"
  s.version          = "0.2.1"
  s.summary          = "A simple Pod to help with a few of our Coursera assignments."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
    A simple module for getting current currency exchange rates from the European
    Central Bank, and for faking it if that fails for any reason. Intended for use
    with various Coursera assignments by myself and Don Patterson.
                       DESC

  s.homepage         = "https://github.com/samkaufman/CurrencyRequest"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Sam Kaufman" => "emrysk@gmail.com" }
  s.source           = { :git => "https://github.com/samkaufman/CurrencyRequest.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/samkaufman'

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CurrencyRequest' => ['Pod/Assets/*.plist', 'Pod/Assets/eurofxref-daily-snapshot.xml']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
