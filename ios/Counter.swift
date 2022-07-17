import Foundation

@objc(Counter)
class Counter: RCTEventEmitter {
  private var count = 0
  
  @objc
  func increment() {
    count += 1
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
  
  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return false
  }
}
