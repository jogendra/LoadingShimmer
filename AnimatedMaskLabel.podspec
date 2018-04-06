#
# Be sure to run `pod lib lint AnimatedMaskLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnimatedMaskLabel'
  s.version          = '1.0.0'
  s.summary          = 'An easy way to add a simple, shimmering effect to any view in an iOS app.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Animated Mask Label is a nice gradient animated label. This is an easy way to add a shimmering effect to any view in your app. It is useful as an unobtrusive loading indicator.
                       DESC

  s.homepage         = 'https://github.com/imjog/AnimatedMaskLabel'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'imjog' => 'imjog24@gmail.com' }
  s.source           = { :git => 'https://github.com/imjog/AnimatedMaskLabel.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/imjog24'

  s.ios.deployment_target = '10.0'

  s.source_files = 'AnimatedMaskLabel/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AnimatedMaskLabel' => ['AnimatedMaskLabel/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
