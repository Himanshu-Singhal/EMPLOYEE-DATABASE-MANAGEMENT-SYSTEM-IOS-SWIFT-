public class Vehicle : Printable {
    public var make : String
    public var model : String
    
    init() {
        self.make = ""
        self.model = ""
    }
    
    init (pMake : String, pModel : String) {
        self.make = pMake
        self.model = pModel
    }
    
    deinit {
        print ("Vehicle destructor")
    }
    
    func printMyData() -> String {
        return ("\n -Make: \(self.make)\n -Model: \(self.model)")
    }
}

