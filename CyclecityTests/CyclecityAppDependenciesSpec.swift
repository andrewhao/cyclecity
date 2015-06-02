import Quick
import Nimble
import Cyclecity

class CyclecityAppDependenciesSpec: QuickSpec {
  override func spec() {
    class MockUIWindow: UIWindow {}
    let mockWindow = MockUIWindow()
    var subject: CyclecityAppDependencies?
    
    beforeEach {
      subject = CyclecityAppDependencies.initWithWindow(mockWindow)
    }
    
    describe("#installRootViewControllerIntoWindow") {
      it("returns a CyclecityAppDependency") {
        expect(subject).to(beAnInstanceOf(CyclecityAppDependencies))
      }
    }
  }
}
