#
# Be sure to run `pod lib lint VeesoMarlinManager.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "VeesoMarlinManager"
  s.version          = "0.1.3"
  s.summary          = "Marlin DRM support for the Veeso Media Player"
  s.homepage         = "http://veeso.co"
  s.license          = 'Commercial'
  s.author           = { "Veeso" => "gabi@veeso.co" }
  s.source           = { :git => "https://github.com/veeso/ios-marlin-drm.git", :tag => s.version.to_s }

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files         = "Headers/*.h"
  s.public_header_files  = "Headers/*.h"
  s.preserve_paths       = "libVeesoMarlinManager.a"
  s.library              = "VeesoMarlinManager", "c++"
  s.xcconfig             =  { "LIBRARY_SEARCH_PATHS" => '"$(PODS_ROOT)/VeesoMarlinManager"' }
  
  s.dependency "VeesoPlayer"
end
