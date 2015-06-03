import Quick
import Nimble
import Cyclecity

class NewRidePresenterSpec: QuickSpec {
  override func spec() {
    describe("#startRecordingGpsTrack") {
      class MockInteractor: NewRideInteractor {
        var wasCalled: Bool = false

        @objc private override func startRecordingGpsTrack() {
          wasCalled = true
        }
      }

      var subject = NewRidePresenter()

      it("tells the interactor to start recording") {
        let mockInteractor = MockInteractor()
        subject.interactor = mockInteractor
        subject.startRecordingGpsTrack()

        expect(mockInteractor.wasCalled).to(beTrue())
      }
    }
  }
}
