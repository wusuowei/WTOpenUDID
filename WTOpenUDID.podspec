#
# Be sure to run `pod lib lint WTOpenUDID.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WTOpenUDID'
  s.version          = '0.1.0'
  s.summary          = 'To get unique device identifier'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
You can use this tool to get unique device identifier. The udid will not change even you uninstall your app from yuor device.
                       DESC

  s.homepage         = 'https://github.com/wusuowei/WTOpenUDID'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wentianen' => '1206860151@qq.com' }
  s.source           = { :git => 'https://github.com/wusuowei/WTOpenUDID.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'WTOpenUDID/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WTOpenUDID' => ['WTOpenUDID/Assets/*.png']
  # }

  s.public_header_files = 'WTOpenUDID/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'OpenUDID', '~> 1.0.0'
  s.dependency 'SSKeychain', '~> 1.4.0'
end
