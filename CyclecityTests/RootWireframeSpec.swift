import Quick
import Nimble
import Cyclecity

class RootWireframeSpec: QuickSpec {
  override func spec() {
    class MockWindow: UIWindow {}
    let window = MockWindow()
    var subject = RootWireframe(window: window)
   
    describe("attributes") {
      it("sets a window object") {
        expect(subject.window).to(equal(window))
      }
    }
  }
}
