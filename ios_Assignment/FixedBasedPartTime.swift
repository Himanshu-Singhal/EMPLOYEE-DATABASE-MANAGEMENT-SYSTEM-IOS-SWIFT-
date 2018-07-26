public class FixedBasedPartTime : PartTime{
    var FixedAmmount: Double
    
    override init()
    {
        FixedAmmount = 0.0
        super.init()
    }
    
    init(fixedAmmount:Double, ppName: String, ppAge: Int, pHWorked: Double, pRate: Double) {
        self.FixedAmmount = fixedAmmount
        super.init(ppName: ppName, ppAge: ppAge, pHWorked: pHWorked, pRate: pRate)
    }
    
    init(fixedAmmount:Double,ppName: String, ppAge: Int, pHWorked: Double, pRate: Double, pV: Vehicle) {
        self.FixedAmmount = fixedAmmount
        super.init(ppName: ppName, ppAge: ppAge, pHWorked: pHWorked, pRate: pRate, pV: pV)
    }
    
    init(fixedAmmount:Double, ppName: String, ppAge: Int, pHWorked: Double, pRate: Double, pMake: String, pModel: String) {
        self.FixedAmmount = fixedAmmount
        super.init(ppName: ppName, ppAge: ppAge, pHWorked: pHWorked, pRate: pRate, pMake: pMake, pModel: pModel)
    }
    override public func calcEarnings() -> Double {
        return (rate * hWorked) + self.FixedAmmount
    }
    
    override public func printMyData() -> String {
        return super.printMyData() + "Fixed Ammount: \(self.FixedAmmount)%\nEarnings: \(self.calcEarnings())(\(self.rate * self.hWorked) + \(self.FixedAmmount)"
    }
    
}

