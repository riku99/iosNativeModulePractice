import Foundation

@objc(Counter)
class Counter: RCTEventEmitter {
  private var count = 0
  
  @objc
  func increment() {
    count += 1
    // イベントの発火
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  // addListenerでとるイベント名の定義
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
  
  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return false
  }
}
