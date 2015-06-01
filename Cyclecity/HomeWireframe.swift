
import Foundation
import UIKit

let HomeViewControllerIdentifier = "HomeViewController"

class HomeWireframe : NSObject {
  var homePresenter : HomePresenter?
  var rootWireframe : RootWireframe?
  var homeViewController : HomeViewController?
  
  func presentHomeInterfaceFromWindow(window: UIWindow) {
    let viewController = homeViewControllerFromStoryboard()
    viewController.eventHandler = homePresenter
    homeViewController = viewController
    homePresenter!.userInterface = viewController
    rootWireframe?.showRootViewController(viewController, inWindow: window)
  }
  
  func homeViewControllerFromStoryboard() -> HomeViewController {
    let storyboard = mainStoryboard()
    let viewController = storyboard.instantiateViewControllerWithIdentifier(HomeViewControllerIdentifier) as! HomeViewController
    return viewController
  }
  
  func mainStoryboard() -> UIStoryboard {
    let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    return storyboard
  }
}
