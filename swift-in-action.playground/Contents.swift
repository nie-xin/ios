class Treasure {
    let what: String
    let location: GeoLocation
    
    init(what: String, location: GeoLocation) {
        self.what = what
        self.location = location
    }
    
    convenience init(what: String, latitude: Double, longitude: Double) {
        let location = GeoLocation(latitude: latitude, longitude: longitude)
        self.init(what: what, location: location)
    }
}


struct GeoLocation {
    var latitude: Double
    var longitude: Double
}


class HistoryTreasure: Treasure {
    let year: Int
    
    init(what: String, year: Int, latitude: Double, longitude: Double) {
        self.year = year
        let location = GeoLocation(latitude: latitude, longitude: longitude)
        super.init(what: what, location: location)
    }
}


class FactTreasure: Treasure {
    let fact: String
    
    init(what: String, fact: String, latitude: Double, longitude: Double) {
        self.fact = fact
        let location = GeoLocation(latitude: latitude, longitude: longitude)
        super.init(what: what, location: location)
    }
}


class HQTreasure: Treasure {
    let company: String
    
    init(company: String, latitude: Double, longitude: Double) {
        self.company = company
        let location = GeoLocation(latitude: latitude, longitude: longitude)
        super.init(what: company + " headquarters", location: location)
    }
}

var treasures: [Treasure] = []
treasures = [
    HistoryTreasure(what: "Google's first office", year: 1999, latitude: 37.44451, longitude: -122.163369),
    FactTreasure(what: "Stanford University", fact: "Founded in 1885 by Leland Standford", latitude: 37.427474, longitude: -122.169719),
    HQTreasure(company: "Apple", latitude: 37.331741, longitude: -122.030333)
]