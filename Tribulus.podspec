#
# Be sure to run `pod lib lint Tribulus.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Tribulus'
  s.version          = '0.2.0'
  s.summary          = 'Convenient attributed strings adjustment in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Tribulus provides very convenient way to compose attributed strings.
It is a framework based on usage custom Attributes class and nice chaining syntax.
                       DESC

  s.homepage         = 'https://github.com/rosberry/Tribulus'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dmitry Frishbuter' => 'dmitry.frishbuter@rosberry.com' }
  s.source           = { :git => 'https://github.com/rosberry/Tribulus.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/**/*'
  
  # s.resource_bundles = {
  #   'Tribulus' => ['Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit'
end
