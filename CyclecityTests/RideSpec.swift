import Quick
import Nimble
import Cyclecity

class RideSpec: QuickSpec {
  override func spec() {
    let distance: Float = 123.22
    //let loc1 = Location(latitude: 123.0, longitude: 123.0, time: NSDate(), elevation: 5.0)
    //let loc2 = Location(latitude: 123.0, longitude: 123.0, time: NSDate(), elevation: 5.0)
    let loc1 = Loc(x: 123.0, y: 123.0)
    let loc2 = Loc(x: 123.0, y: 123.0)
    let subject = Ride(distance: distance)
    
    describe("attributes") {
      it("stores distance") {
        expect(subject.distance).to(equal(123.22))
      }
      
      it("stores locations") {
        expect(subject.locations).to(equal([loc1, loc2]))
      }
      
      it("sets up locations") {
        expect(loc1.x
          ).to(equal(123.0))
      }
    }
    
    //describe("attributes") {
    //  it("does stuff") {
    //    expect(subject.locations).to(equal([loc1, loc2]))
    //  }
    //}
  }
}
