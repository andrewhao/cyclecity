import Foundation
import UIKit

public class AppDependencies {
  var home = HomeWireframe()
  
  public init() {
    configureDependencies()
  }

  func configureDependencies() {
    // TODO Wire up the components here.
  }

  public func installRootViewControllerIntoWindow(window: UIWindow) -> Bool {
    return true
  }
}
