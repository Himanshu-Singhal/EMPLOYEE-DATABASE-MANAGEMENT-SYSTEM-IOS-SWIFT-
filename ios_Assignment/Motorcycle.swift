public class Motorcycle : Vehicle{
    
    var sidestand:Bool
    
    override init()
    {
        sidestand = true
        super.init()
    }
    
    init (sidestand : Bool, pMake : String, pModel : String) {
        self.sidestand = sidestand
        super.init(pMake: pMake, pModel: pModel)
    }
    
    override func printMyData() -> String {
        return super.printMyData() + "\n -Side Stand : \(self.sidestand)"
    }
    
}

