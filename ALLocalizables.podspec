#
# Be sure to run `pod lib lint ALLocalizables.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ALLocalizables"
  s.version          = "1.0.0"
  s.summary          = "Localize UILabels, UIButtons and more directly through the Interface Builder."
  s.description      = "Localize UILabels, UIButtons and more directly through the Interface Builder."
  s.homepage         = "https://github.com/AvdLee/ALLocalizables"
  s.screenshots      = "http://i2.wp.com/i.stack.imgur.com/XFNl2.png"
  s.license          = 'MIT'
  s.author           = { "Antoine van der Lee" => "contact@avanderlee.com" }
  s.source           = { :git => "https://github.com/AvdLee/ALLocalizables.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/twannl'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ALLocalizables' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
