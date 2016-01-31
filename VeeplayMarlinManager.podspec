#
# Be sure to run `pod lib lint VeeplayMarlinManager.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "VeeplayMarlinManager"
  s.version          = "0.1.4"
  s.summary          = "Marlin DRM support for the Veeplay Media Player"
  s.homepage         = "http://veeplay.com"
  s.license          = 'Commercial'
  s.author           = { "Veeplay" => "gabi@veeplay.com" }
  s.source           = { :git => "https://github.com/veeplay/ios-marlin-drm.git", :tag => s.version.to_s }

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files         = "Headers/*.h"
  s.public_header_files  = "Headers/*.h"
  s.library              = "c++"
  s.vendored_libraries   = "libVeeplayMarlinManager.a"
  
  s.dependency "Veeplay"
end
