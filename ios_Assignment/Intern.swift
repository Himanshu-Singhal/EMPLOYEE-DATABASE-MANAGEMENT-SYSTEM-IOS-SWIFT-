public class Intern : Employee {
    
    // private(set) var schoolName : String
    public var schoolName : String
    
    override init() {
        self.schoolName = "0.0"
        super.init()
    }
    
    init (ppName: String, ppAge: Int, pSchoolName: String) {
        self.schoolName = pSchoolName
        super.init(ppName, ppAge)
        
    }
    
    
    
    init (ppName: String, ppAge: Int, pSchoolName: String, pV: Vehicle) {
        self.schoolName = pSchoolName
        super.init(ppName, ppAge, pV)
        
    }
    
    init (ppName: String, ppAge: Int, pSchoolName: String, pMake: String, pModel: String) {
        self.schoolName = pSchoolName
        super.init(ppName, ppAge, pMake, pModel)
    }
    
    deinit {
        print ("I am in the Intern destructor")
    }
    
    override public func printMyData() -> String {
        return  super.printMyData()+"\nEmployee is Intern\nSchool Name: \(self.schoolName)"
    }
    
}

