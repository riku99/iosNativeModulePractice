import Foundation

// クラスそのものや関数をObjective-cランタイムにexportするためにobjcモディフィアーが必要
@objc(CalendarManager)
class CalendarManager: NSObject {
  @objc
  func add(_ name: String, resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) {
    do {
      print("😏 Called add")
      resolve(name)
    } catch {
      reject("Error", "error", nil)
    }
  }
  
  @objc
  func constantsToExport() -> [String: Any]! {
    return ["someKey": "someValue"]
  }
}
