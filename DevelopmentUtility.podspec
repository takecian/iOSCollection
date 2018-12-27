#
# Be sure to run `pod lib lint DevelopmentUtility.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DevelopmentUtility'
  s.version          = '1.1.0'
  s.summary          = 'Set of utility for iOS app developemt.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
DevelopmentUtility is a set of utility that helps you develop effeciently.
                       DESC

  s.homepage         = 'https://github.com/takecian/iOSDevelopmentUtility'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'takecian' => 'takecian@gmail.com' }
  s.source           = { :git => 'https://github.com/takecian/iOSDevelopmentUtility.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/takecian'
  s.swift_version    = '4.2'

  s.ios.deployment_target = '9.0'

  s.source_files = 'DevelopmentUtility/**/*.{swift}'

  # s.resource_bundles = {
  #   'DevelopmentUtility' => ['DevelopmentUtility/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
