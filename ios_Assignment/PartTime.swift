public class PartTime : Employee {
    
    public var hWorked : Double
    public var rate : Double
    
    override init() {
        self.hWorked = 0.0
        self.rate = 0.0
        super.init()
    }
    
    init (ppName: String, ppAge: Int, pHWorked: Double, pRate: Double) {
        hWorked = pHWorked
        rate = pRate
        super.init(ppName, ppAge)
        
    }
    
    init (ppName: String, ppAge: Int, pHWorked: Double, pRate: Double, pV: Vehicle) {
        hWorked = pHWorked
        rate = pRate
        super.init(ppName, ppAge, pV)
        
    }
    
    init (ppName: String, ppAge: Int, pHWorked: Double, pRate: Double, pMake: String, pModel: String) {
        hWorked = pHWorked
        rate = pRate
        super.init(ppName, ppAge, pMake, pModel)
    }
    
    deinit {
        print ("I am in the PartTime destructor")
    }
    
    override public func calcEarnings() -> Double {
        return (self.hWorked * self.rate)
    }
    
    override public func printMyData() -> String{
        
        return super.printMyData()+"\nI am a parttime\n -Rate: \(self.rate)\n -Hours Worked: \(self.hWorked)"
    }
    
}


