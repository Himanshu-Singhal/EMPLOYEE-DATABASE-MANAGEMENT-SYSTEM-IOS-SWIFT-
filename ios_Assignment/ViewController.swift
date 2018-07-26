//
//  ViewController.swift
//  ios_Assignment
//
//  Created by ios on 2017-12-06.
//  Copyright © 2017 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ResultBox: UITextView!
    

    var EmployeeType:String = ""
    var VehicleType:String = ""
    
    @IBOutlet weak var TFName: UITextField!
    @IBOutlet weak var TFage: UITextField!
    
    var employeeList:[Employee] = []
    
    
    @IBOutlet weak var PartTimeLabel1: UILabel!
    @IBOutlet weak var PartTimeLabel2: UILabel!
    @IBOutlet weak var PartTimeLabel3: UILabel!
    
    @IBOutlet weak var PartTimeTypeSwitch: UISwitch!
    
    @IBOutlet weak var TextField1Ammount: UITextField!
    @IBOutlet weak var TextField2Bonus: UITextField!
    @IBOutlet weak var TFHoursWorked: UITextField!
    @IBOutlet weak var TFRate: UITextField!
    @IBOutlet weak var LabelHW: UILabel!
    @IBOutlet weak var LabelRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PartTimeLabel1.isHidden = true
        PartTimeLabel2.isHidden = true
        PartTimeLabel3.isHidden = true
        PartTimeTypeSwitch.isHidden = true
        TextField1Ammount.isHidden = true
        TextField2Bonus.isHidden = true
        TFRate.isHidden = true
        TFHoursWorked.isHidden = true
        LabelHW.isHidden = true
        LabelRate.isHidden = true
        
        
        
        VehicleType = ""
        VLabel1.isHidden = true
        VLabel2.isHidden = true
        VLabel3.isHidden = true
        VTF1.isHidden = true
        VTF2.isHidden = true
        VSwitch.isHidden = true
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func PartTimeBtn(_ sender: Any) {
        print(segmentedControl.selectedSegmentIndex)
        
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            EmployeeType = "PartTimeFixedBased"
            
            
            TFRate.isHidden = false
            TFHoursWorked.isHidden = false
            LabelHW.isHidden = false
            LabelRate.isHidden = false
            
            
            PartTimeLabel3.isHidden = true
            TextField2Bonus.isHidden = true
            
            PartTimeLabel1.isHidden = false
            PartTimeLabel2.isHidden = false
            PartTimeTypeSwitch.isHidden = false
            TextField1Ammount.isHidden = false
            
            
            PartTimeLabel1.text = "Type (Fixed Based)"
            PartTimeTypeSwitch.setOn(true, animated: true)
            PartTimeLabel2.text = "Fixed Ammount : "
            
            
            print("PartTime")
        case 1:
            EmployeeType = "Intern"
            
            
            TFRate.isHidden = true
            TFHoursWorked.isHidden = true
            LabelHW.isHidden = true
            LabelRate.isHidden = true
            
            
            PartTimeLabel1.isHidden = true
            PartTimeLabel3.isHidden = true
            PartTimeTypeSwitch.isHidden = true
            TextField2Bonus.isHidden = true
            
            PartTimeLabel2.isHidden = false
            TextField1Ammount.isHidden = false
            PartTimeLabel2.text = "School Name : "
            
            
            
            print("Intern")
        case 2:
            
            
            TFRate.isHidden = true
            TFHoursWorked.isHidden = true
            LabelHW.isHidden = true
            LabelRate.isHidden = true
            
            EmployeeType = "FullTime"
            
            PartTimeLabel1.isHidden = true
            PartTimeTypeSwitch.isHidden = true
            
            PartTimeLabel2.isHidden = false
            PartTimeLabel3.isHidden = false
            TextField1Ammount.isHidden = false
            TextField2Bonus.isHidden = false
            
            PartTimeLabel2.text = "Salary : "
            PartTimeLabel3.text = "Bonus : "
            
            print("Full Time")
        default:
            print("Default")
        }
        
    }
    
    @IBAction func SwitchChangeListener(_ sender: Any) {
        print(PartTimeTypeSwitch.isOn)
        if(PartTimeTypeSwitch.isOn)
        {
            EmployeeType = "PartTimeFixedBased"
            PartTimeLabel1.text = "Type (Fixed Based)"
        
            PartTimeLabel2.text = "Fixed Ammount : "
            PartTimeLabel3.isHidden = true
            TextField2Bonus.isHidden = true
        }
        else
        {
            EmployeeType = "PartTimeCommissionBased"
            PartTimeLabel1.text = "Type (Commission Based)"
            
            PartTimeLabel2.text = "Commision Percentage : "
            PartTimeLabel3.isHidden = true
            TextField2Bonus.isHidden = true
        }
    }
    
    @IBOutlet weak var VehicleSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var VLabel1: UILabel!
    @IBOutlet weak var VLabel2: UILabel!
    @IBOutlet weak var VLabel3: UILabel!
    @IBOutlet weak var VTF1: UITextField!
    @IBOutlet weak var VSwitch: UISwitch!
    @IBOutlet weak var VTF2: UITextField!
    
    
    @IBAction func VehicleChangeListener(_ sender: Any) {
        
        VLabel1.isHidden = false
        VLabel2.isHidden = false
        VLabel3.isHidden = false
        VTF1.isHidden = false
        VTF2.isHidden = false
        VSwitch.isHidden = false
        
        switch VehicleSegmentedControl.selectedSegmentIndex {
            
        case 0:
            VehicleType = "Car"
            print("Car")
            VLabel3.text = "Convertible"
            
        case 1:
            VehicleType = "MotorCycle"
            VLabel3.text = "SideStand"
            print("MotorCycle")
//        case 2:
//            VehicleType = "None"
//            VLabel1.isHidden = true
//            VLabel2.isHidden = true
//            VLabel3.isHidden = true
//            VTF1.isHidden = true
//            VTF2.isHidden = true
//            VSwitch.isHidden = true
//            
//            print("None")
            
        default:
            print("Default")
        }
    }
    
    @IBAction func AddEmployeeClick(_ sender: Any) {
        
        let name:String = ((TFName.text == "") ? "NoName" : TFName.text!)
        let age:Int = Int(((TFage.text == "") ? "0" : TFage.text!))!
        
        
        var emp : Employee? = nil
        
        switch EmployeeType {
        case "PartTimeFixedBased":
            //Add a PartTimeFixedBased Employee
            let hoursWorked = ((TFHoursWorked.text == "") ? "0.0" : TFHoursWorked.text!)
            let rate = ((TFRate.text == "") ? "0.0" : TFRate.text!)
            
            let amnt = ((TextField1Ammount.text == "") ? "0.0" : TextField1Ammount.text!)
            
            
            emp = FixedBasedPartTime(fixedAmmount: Double(amnt)!, ppName: name, ppAge: age, pHWorked: Double(hoursWorked)!, pRate: Double(rate)!)
         
            print("PartTimeFixedBased")
            
        case "PartTimeCommissionBased":
            let hoursWorked = ((TFHoursWorked.text == "") ? "0.0" : TFHoursWorked.text!)
            let rate = ((TFRate.text == "") ? "0.0" : TFRate.text!)
            let cmcn =  ((TextField1Ammount.text == "") ? "0.0" : TextField1Ammount.text!)
        
            emp = CommisionBasedPartTime(commPerc: Double(cmcn)!, ppName: name, ppAge: age, pHWorked: Double(hoursWorked)!, pRate: Double(rate)!)
            
            
            print("PartTimeCommissionBased")
            
        case "Intern":
            print("Intern")
            
            let schlname = ((TextField1Ammount.text == "") ? "No Name" : TextField1Ammount.text!)
            
            emp = Intern(ppName: name, ppAge: age, pSchoolName: schlname)

            
            
        case "FullTime":
            
            let salary:Double = Double((TextField1Ammount.text == "") ? "0.0" : TextField1Ammount.text!)!
            let bonus:Double = Double((TextField2Bonus.text == "") ? "0.0" : TextField2Bonus.text!)!
            
            emp = FullTime(ppName: name, ppAge: age, pSalary: salary, pBonus: bonus)
            
            print("FullTime")
        default:
            //Nothing Selected
            print("Default")
            let alert = UIAlertController(title: "Warning", message: "Please Select a Employee Type", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
        var v :Vehicle?
        
        switch VehicleType{
        case "Car":
            
            let make = ((VTF1.text == "") ? "None" : VTF1.text!)
            let model = ((VTF2.text == "") ? "None" : VTF2.text!)
            let convertible = VSwitch.isOn
            
            v = Car(convertible: convertible, pMake: make, pModel: model)
            
            print("Car")
        case "MotorCycle":
            print("MotorCycle")
            let make = ((VTF1.text == "") ? "None" : VTF1.text!)
            let model = ((VTF2.text == "") ? "None" : VTF2.text!)
            let sidestand = VSwitch.isOn
            
            v = Motorcycle(sidestand: sidestand, pMake: make, pModel: model)
            
        default:
            print("V Default")
            print(VehicleType)
            let alert = UIAlertController(title: "Warning", message: "Please Select a Vehicle Type", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
        if (EmployeeType != "" && VehicleType != "" && emp != nil)
        {
            //Create an Employee and Add it
            employeeList.append(emp!)
            employeeList[employeeList.count-1].v = v
        }
        
        ResultBox.text = ""
        
        for e in employeeList
        {
            ResultBox.text = ResultBox.text + "\n~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~\n"
            ResultBox.text = ResultBox.text + (e.printMyData())
            ResultBox.text = ResultBox.text + "\n" + "Employee has a " + ((e.v is Car) ? "Car" : "MotorCycle")
            ResultBox.text = ResultBox.text + (e.v?.printMyData())!
            print("\n\n\n"+e.printMyData())
        }
        
        
        
        
        
    }
    
}

