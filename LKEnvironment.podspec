#
# Be sure to run `pod lib lint LKEnvironment.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "LKEnvironment"
  s.version          = "0.1.0"
  s.summary          = "Multiple build environments"
  s.description      = "Makes multiple build environments easy"
  s.homepage         = "https://github.com/Lightningkite/LKEnvironment"
  s.license          = 'MIT'
  s.author           = { "Erik Sargent" => "erik@lightningkite.com" }
  s.source           = { :git => "https://github.com/LIghtningkite/LKEnvironment.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
