import Quick
import Nimble
import Cyclecity

class RideSpec: QuickSpec {
  override func spec() {
    let distance: Float = 123.22
    let loc1 = Location(latitude: 123.0, longitude: 123.0, time: NSDate(), elevation: 5.0)
    let loc2 = Location(latitude: 123.0, longitude: 123.0, time: NSDate(), elevation: 5.0)
    let locations = [loc1, loc2]
    
    describe("attributes") {
      let subject = Ride(distance: distance, locations: locations)
      it("stores distance") {
        expect(subject.distance).to(equal(123.22))
      }
    }
    
    describe("attributes") {
      let subject = Ride(distance: distance, locations: locations)
      it("stores a list of locations") {
        //expect(true).to(equal(true))
        expect(subject.locations).to(match(locations))
      }
    }
  }
}
