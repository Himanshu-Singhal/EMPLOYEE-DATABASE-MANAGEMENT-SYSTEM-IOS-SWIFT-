public class Employee : Printable {
    public var name : String
    public var age : Int
    public var v : Vehicle?
    
    init() {
        name = ""
        age = 0
        v = nil
    }
    
    init (_ pName: String, _ pAge: Int) {
        self.name = pName
        self.age = pAge
        v = nil
    }
    
    init (_ pName: String, _ pAge: Int, _ pV: Vehicle) {
        self.name = pName
        self.age = pAge
        v = pV
    }
    
    init (_ pName: String, _ pAge: Int, _ ppMake: String, _ ppModel: String) {
        self.name = pName
        self.age = pAge
        self.v = Vehicle(pMake: ppMake, pModel: ppModel)
        // or in two lines as below
        //        let myV : Vehicle = Vehicle(pMake: ppMake, pModel: ppModel)
        //        v = myV
    }
    
    
    public func calcEarnings() -> Double {
        return 1000.0
    }
    
    public func calcBirthYear() -> Int {
        return (2017 - self.age)
    }
    
    public func printMyData() -> String {
        return("Name: \(self.name)\nYear of Birth: \(self.calcBirthYear())")
    }
}






