#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

// objcでは RCT_EXPORT_MODULE() でJSからの参照を可能にしていたが、Swiftの場合は RCT_EXTERN_MODULE を使う
// 外部にあるモジュールをJS側から読み込ませる
@interface RCT_EXTERN_MODULE(CalendarManager, NSObject)

// objcでいう RCT_EXPORT_METHOD()
RCT_EXTERN_METHOD(add:(NSString *)name
                  resolve:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject
                  )

@end
