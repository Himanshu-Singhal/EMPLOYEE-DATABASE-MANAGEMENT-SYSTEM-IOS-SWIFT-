public class Car : Vehicle{
    
    var convertible:Bool
    
    override init() {
        self.convertible = false
        super.init()
    }
    
    init (convertible : Bool, pMake : String, pModel : String) {
        self.convertible = convertible
        super.init(pMake: pMake, pModel: pModel)
    }
    
    override func printMyData() -> String {
        return super.printMyData() + "\n -Convertible : \(self.convertible)"
    }
    
}

