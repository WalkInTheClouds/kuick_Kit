#
# Be sure to run `pod lib lint kuick_Kit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "kuick_Kit"
  s.version          = "0.2.0"
  s.summary          = "kuick_Kit 工具包."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "一些杂七杂八的东西,凑活着用吧~"

  s.homepage         = "https://github.com/WalkInTheClouds/kuick_Kit"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "laojun666" => "791290087@qq.com" }
  s.source           = { :git => "https://github.com/WalkInTheClouds/kuick_Kit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'kuick_Kit' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  #  s.dependency 'AFNetworking', '~> 2.3'
  #  s.dependency 'JSONModel'
  #  s.dependency 'JSONModel'

  s.subspec 'Tool' do |tool|
    tool.source_files = '**/Pod/Classes/Tool/**/*'
    tool.public_header_files = '**/Pod/Classes/Tool/**/*.h'
    tool.dependency 'AFNetworking', '~> 3.0'
    tool.dependency 'JSONModel'

  end

  s.subspec 'WebImage' do |webImage|
    webImage.source_files = '**/Pod/Classes/WebImage/**/*'
    webImage.public_header_files = '**/Pod/Classes/WebImage/**/*.h'
    webImage.dependency 'SDWebImage'
    webImage.dependency 'YYWebImage'
  end


end
