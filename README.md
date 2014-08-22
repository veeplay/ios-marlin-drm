## VeesoMarlinManager

APSMediaPlayer provides support for [Marlin DRM](http://www.marlin-community.com/), using the SDKs provided by [ExpressPlay](http://expressplay.com). To install:

* Install the ExpressPlay SDK.
* Add the following line to your Podfile:
        
        pod "VeesoMarlinManager"
    
* If installing without CocoaPods, get the latest static library and header files [from the repository](https://github.com/veeso/ios-marlin-drm).
* Import the VeesoMarlinManager header file:
 
        #import "VeesoMarlinManager.h"

* Instantiate a Marlin manager object and register it with the player:
        
        VeesoMarlinManager *marlinManager = [[VeesoMarlinManager alloc] init];
        [[APSMediaPlayer sharedInstance] registerUnitManager:marlinManager];
    
* Set the `managerType` property of the `APSMediaUnit` object to `@"marlin"`.
* Optionally, to have the player download and add a broadband license to the local store, you can set the `kAPSMetadataDrmUrl` key in the `metadata` dictionary of an item to the string URL to the license file. To configure from JSON, set the `drm_encoding_url` metadata key.

### Example unit configurations

* Configuring a unit progamatically:

        APSMediaUnit *unit = [[APSMediaUnit alloc] init];
        unit.url = [NSURL URLWithString:@"http://url.to/your-protected-media"];
        unit.managerType = kVeesoMarlinDRMEncoding;
        unit.metadata = @{ kAPSMetadataDrmUrl: @"http://url.to/marlin-broadband-key" }
        
* Configuring a unit from JSON:

        {
                "url": "http://url.to/your-protected-media",
                "manager": "marlin",
                "metadata": {
                        "drm_encoding_url": "http://url.to/marlin-broadband-key"
                }
        }
