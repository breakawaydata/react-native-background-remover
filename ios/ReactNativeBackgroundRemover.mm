#import "ReactNativeBackgroundRemover.h"
// Conditional import for the Swift header file
#if __has_include("ReactNativeBackgroundRemover-Swift.h")
#import "ReactNativeBackgroundRemover-Swift.h"
#elif __has_include("ReactNativeBackgroundRemover/ReactNativeBackgroundRemover-Swift.h")
#import "ReactNativeBackgroundRemover/ReactNativeBackgroundRemover-Swift.h"
#else
#error "ReactNativeBackgroundRemover-Swift.h not found"
#endif

@implementation BackgroundRemover {
  BackgroundRemoverSwift *backgroundRemover;
}

RCT_EXPORT_MODULE()

- (id)init {
    self = [super init];
 
    if (self) {
        backgroundRemover = [[BackgroundRemoverSwift alloc] init];
    }
 
    return self;
}

RCT_EXPORT_METHOD(removeBackground:(NSString *)imageURI
                 resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    [backgroundRemover removeBackground:imageURI resolve:resolve reject:reject];
}

@end
