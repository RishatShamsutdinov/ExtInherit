#
# Be sure to run `pod lib lint Pod-Demo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Pod-Demo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Pod-Demo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/RishatShamsutdinov/Pod-Demo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RishatShamsutdinov' => 'dichat.dark@gmail.com' }
  s.source           = { :git => 'https://github.com/RishatShamsutdinov/Pod-Demo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  # s.resource_bundles = {
  #   'Pod-Demo' => ['Pod-Demo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'Default' do |sp|
    sp.source_files = 'Pod-Demo/Classes/**/*'
  end

  s.subspec 'AppExtension' do |sp|
    sp.source_files = 'Pod-Demo/Classes/**/*'

    s.pod_target_xcconfig = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                              'GCC_PREPROCESSOR_DEFINITIONS' => 'RS_TARGET_IS_EXTENSION'}

    s.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'RS_TARGET_IS_EXTENSION' }
  end

  s.default_subspec = 'Default'
end
