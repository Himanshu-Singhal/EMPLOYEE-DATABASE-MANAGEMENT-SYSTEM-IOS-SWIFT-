public class FullTime : Employee {
    
    public var salary : Double
    public var bonus : Double
    
    override init() {
        self.salary = 0.0
        self.bonus = 0.0
        super.init()
    }
    
    init (ppName: String, ppAge: Int, pSalary: Double, pBonus: Double) {
        salary = pSalary
        bonus = pBonus
        super.init(ppName, ppAge)
        
    }
    
    init (ppName: String, ppAge: Int, pSalary: Double, pBonus: Double, pV: Vehicle) {
        salary = pSalary
        bonus = pBonus
        super.init(ppName, ppAge, pV)
        
    }
    
    init (ppName: String, ppAge: Int, pSalary: Double, pBonus: Double, pMake: String, pModel: String) {
        salary = pSalary
        bonus = pBonus
        super.init(ppName, ppAge, pMake, pModel)
    }
    
    deinit {
        print ("I am in the FullTime destructor")
    }
    
    override public func calcEarnings() -> Double {
        return (self.salary + self.bonus)
    }
    
    override public func printMyData() -> String{
        return super.printMyData() + "\nEmployee is Fulltime\n -Salary: \(self.salary)\n -Bonus: \(self.bonus)"
    }
    
}

