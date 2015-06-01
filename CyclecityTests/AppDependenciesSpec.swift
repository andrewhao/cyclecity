import Quick
import Nimble
import Cyclecity

class AppDependenciesSpec: QuickSpec {
  override func spec() {
    var subject = AppDependencies()
    
    describe("#installRootViewControllerIntoWindow") {
      it("adds the root view controller to the window") {
        class MockUIWindow: UIWindow {}
        let mockWindow = MockUIWindow()
        
        expect(subject.installRootViewControllerIntoWindow(mockWindow)).to(equal(true))
      }
    }
  }
}
