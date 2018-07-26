public class CommisionBasedPartTime : PartTime{
    var CommisionPerc: Double
    
    override init()
    {
        CommisionPerc = 0.0
        super.init()
    }
    
    
    init(commPerc:Double, ppName: String, ppAge: Int, pHWorked: Double, pRate: Double) {
        self.CommisionPerc = commPerc
        super.init(ppName: ppName, ppAge: ppAge, pHWorked: pHWorked, pRate: pRate)
    }
    
    init(commPerc:Double,ppName: String, ppAge: Int, pHWorked: Double, pRate: Double, pV: Vehicle) {
        self.CommisionPerc = commPerc
        super.init(ppName: ppName, ppAge: ppAge, pHWorked: pHWorked, pRate: pRate, pV: pV)
    }
    
    init(commPerc:Double, ppName: String, ppAge: Int, pHWorked: Double, pRate: Double, pMake: String, pModel: String) {
        self.CommisionPerc = commPerc
        super.init(ppName: ppName, ppAge: ppAge, pHWorked: pHWorked, pRate: pRate, pMake: pMake, pModel: pModel)
    }
    override public func calcEarnings() -> Double {
        let commision = (CommisionPerc * super.calcEarnings()) / 100;
        return (rate * hWorked) + commision
    }
    
    override public func printMyData() -> String {
        return super.printMyData() + "\n -Commision: \(self.CommisionPerc)%\n -Earnings: \(self.calcEarnings())(\(super.calcEarnings()) + \(self.CommisionPerc)% of \(super.calcEarnings()))"
    }
    
}

