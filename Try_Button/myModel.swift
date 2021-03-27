import CoreLocation

struct Food {
    let name: String
    let description: String
    var price: Int!
    var location: CLLocation?
    let offer: String
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.description = dictionary["description"] as? String ?? ""
        self.price = dictionary["price"] as? Int ?? 0
        self.offer = dictionary["offer"] as? String ?? ""
        
    }
}
