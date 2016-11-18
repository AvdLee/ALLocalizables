Pod::Spec.new do |s|
  s.name             = "ALLocalizables"
  s.version          = "2.0"
  s.summary          = "Localize UILabels, UIButtons and more directly through the Interface Builder."
  s.description      = "Localize UILabels, UIButtons and more directly through the Interface Builder using a new available property 'Localize string'."
  s.homepage         = "https://github.com/AvdLee/ALLocalizables"
  s.screenshots      = "http://i2.wp.com/i.stack.imgur.com/XFNl2.png"
  s.license          = 'MIT'
  s.author           = { "Antoine van der Lee" => "contact@avanderlee.com" }
  s.source           = { :git => "https://github.com/AvdLee/ALLocalizables.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/twannl'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ALLocalizables' => ['Pod/Assets/*.png']
  }
end
