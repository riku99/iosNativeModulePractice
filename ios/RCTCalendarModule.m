#import <Foundation/Foundation.h>

#import "RCTCalendarModule.h"
#import <React/RCTLog.h>

@implementation RCTCalendarModule

// RCTCalendarModuleをReactNative側にexportするためのマクロ関数
// RN側では接頭語のRCT, RKは削除して呼び出す。const { CalendarModule } = ReactNative.NativeModules;
// 引数を渡せばその名前で呼び出せる。文字列リテラルではない（""で囲わない）
RCT_EXPORT_MODULE();

// RCT_EXPORT_METHODにメソッドを登録することによりJS側で呼び出すことができる
// 非同期なので返り値はvoid
// ここでは createCalendarEvent というメソッドを定義
// Native側からJS側に値を渡すためにはcallbackを使う。これは常に非同期
RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)title location:(NSString *)location callback: (RCTResponseSenderBlock)callback)
{
 NSNumber *eventId = [NSNumber numberWithInt:123];
  callback(@[[NSNull null], eventId]); // 引数の最初のデータをエラーオブジェクトとして管理

 RCTLogInfo(@"Pretending to create an event %@ at %@", title, location);
}

// ネイティブモジュールメソッドの最後のパラメータがRCTPromiseResolveBlock, RCTPromiseRejectBlockの場合、JS側ではPromiseを返す
RCT_EXPORT_METHOD(createCalendarEventPromise:(NSString *)title
                  location:(NSString *)location
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  NSInteger eventId = 22;
  if (eventId) {
    resolve(@(eventId));
  } else {
    reject(@"event_failure", @"no event id returned", nil);
  }
}

// RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHODで同期処理のメソッドを行うことができる
// 返り値はJSONにシリアライズできるタイプに限られる
// 非推奨
RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(getName)
{
  return [[UIDevice currentDevice] name];
}

// constantsToExportをオーバーライドすることによりConstantsaをexportすることができる
- (NSDictionary *)constantsToExport
{
  return @{ @"DEFAULT_EVENT_NAME": @"New Event" };
}

// クラスの初期化をメインスレッドで行わない
+ (BOOL)requiresMainQueueSetup
{
    return NO;
}

@end
