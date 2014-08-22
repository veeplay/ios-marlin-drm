## VeesoMarlinManager

APSMediaPlayer provides support for [Marlin DRM](http://www.marlin-community.com/), using the SDKs provided by [ExpressPlay](http://expressplay.com). To install:

* Install the ExpressPlay SDK.
* Add the following line to your Podfile:
        
        pod "VeesoMarlinManager"
    
* If installing without CocoaPods, get the latest static library and header files [from the repository](https://github.com/veeso/ios-marlin-drm).
* Instantiate a Marlin manager object and register it with the player:
        
        VeesoMarlinManager *marlinManager = [[VeesoMarlinManager alloc] init];
        [[APSMediaPlayer sharedInstance] registerUnitManager:marlinManager];
    
* Set the `managerType` property of the `APSMediaUnit` object to `@"marlin"`.
* Optionally, to have the player download and add a license to the local store, you can set the `kAPSMetadataDrmUrl` key in the `metadata` dictionary of an item to the string URL to the license file. To configure from JSON, set the `drm_encoding_url` metadata key.