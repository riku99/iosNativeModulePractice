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
RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)name location:(NSString *)location)
{
  // ログ出力
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

// RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHODで同期処理のメソッドを行うことができる
// 返り値はJSONにシリアライズできるタイプに限られる
// 非推奨
RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(getName)
{
  return [[UIDevice currentDevice] name];
}

@end
