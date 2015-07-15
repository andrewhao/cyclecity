import Quick
import Nimble
import Cyclecity

class LocationSpec: QuickSpec {
  override func spec() {
    let elevation: Float = 22.0
    let time = NSDate()
    let longitude: Float = 120.0
    let latitude: Float = 123.0
    let subject = Location(latitude: latitude, longitude: longitude, time: time, elevation: elevation)
    
    describe("properties") {
      it("returns elevation") {
        expect(subject.longitude).to(equal(longitude))
      }
    }
    
    describe("#==") {
      it("returns true for same lat/lon") {
        let newLoc: Location = Location(latitude: latitude, longitude: longitude, time: NSDate(), elevation: 44.0)
        expect(subject as Location).to(equal(newLoc))
      }
    }
  }
}
