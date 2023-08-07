@objc(AwesomeLibrary10ViewManager)
class AwesomeLibrary10ViewManager: RCTViewManager {

  override func view() -> (AwesomeLibrary10View) {
    return AwesomeLibrary10View()
  }

  @objc override static func requiresMainQueueSetup() -> Bool {
    return false
  }
}

class AwesomeLibrary10View : UIView {

  @objc var color: String = "" {
    didSet {
      self.backgroundColor = hexStringToUIColor(hexColor: color)
    }
  }

  func hexStringToUIColor(hexColor: String) -> UIColor {
    let stringScanner = Scanner(string: hexColor)

    if(hexColor.hasPrefix("#")) {
      stringScanner.scanLocation = 1
    }
    var color: UInt32 = 0
    stringScanner.scanHexInt32(&color)

    let r = CGFloat(Int(color >> 16) & 0x000000FF)
    let g = CGFloat(Int(color >> 8) & 0x000000FF)
    let b = CGFloat(Int(color) & 0x000000FF)

    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
  }
}
