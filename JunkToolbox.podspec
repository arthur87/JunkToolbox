Pod::Spec.new do |s|
  s.name        = "JunkToolbox"
  s.version     = "0.1"
  s.summary     = "JunkToolbox in Swift"
  s.homepage    = "https://github.com/arthur87/JunkToolbox"
  s.license     = { :type => "MIT" }
  s.authors     = { "asakawa" => "asakawa@daispot.com" }

  s.requires_arc = true
  s.osx.deployment_target = "10.11"
  s.ios.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source   = { :git => "https://github.com/arthur87/JunkToolbox.git", :tag => "0.1"}
  s.osx.source_files = "Source/common/*.swift"
  s.ios.source_files = "Source/common/*.swift", "Source/ios/*.swift"
  s.watchos.source_files = "Source/common/*.swift", "Source/watchos/*.swift"
  s.tvos.source_files = "Source/common/*.swift", "Source/tvos/*.swift"
  s.osx.frameworks = "StoreKit"
  s.ios.frameworks = "StoreKit", "SystemConfiguration"
  s.tvos.frameworks = "StoreKit"
end
