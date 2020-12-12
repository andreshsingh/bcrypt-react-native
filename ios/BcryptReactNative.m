#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(BcryptReactNative, NSObject)

RCT_EXTERN_METHOD(getSalt: (NSInteger)rounds
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejector: (RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(hash:(NSString *)salt
                  item:(NSString *)item
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejector: (RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(compareSync:(NSString *)password
                  hash:(NSString *)hash
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejector: (RCTPromiseRejectBlock)reject)

@end
