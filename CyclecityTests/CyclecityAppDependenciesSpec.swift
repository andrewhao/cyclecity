import Quick
import Nimble
import Cyclecity

class CyclecityAppDependenciesSpec: QuickSpec {
  override func spec() {
    describe("#installRootViewControllerIntoWindow") {
      it("adds the root view controller to the window") {
        class MockUIWindow: UIWindow {}
        let mockWindow = MockUIWindow()
        
        expect(CyclecityAppDependencies.initWithWindow(mockWindow)).to(equal(true))
      }
    }
  }
}
