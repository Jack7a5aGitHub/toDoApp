//
//  EntryFormViewController.swift
//  MyProfolio
//
//  Created by Jack Wong on 2017/08/30.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit
import Eureka

class EntryFormViewController: FormViewController {
    
    
    @IBAction func saveBtn(_ sender: Any) {
        
<<<<<<< HEAD
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Form(context: context)
        
=======
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Form(context: context)
>>>>>>> parent of e97babf... 9/9 update before doing the model
        task.task = taskSubject
        task.dueDate = date as NSDate
        task.priority = priority
        task.details = details
        
        print("save success")
        // save the data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
    
<<<<<<< HEAD
    var theChosen  : Form? = nil
=======
>>>>>>> parent of e97babf... 9/9 update before doing the model
    var taskSubject = String()
    var date = Date()
    var details = String()
    var priority = String()
    
<<<<<<< HEAD
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
=======
    override func viewDidLoad() {
>>>>>>> parent of e97babf... 9/9 update before doing the model
        super.viewDidLoad()
        
        
        if theChosen != nil {
            print("yes taskSubject")
            print(theChosen)
            
            self.taskSubject = (theChosen?.task)!
            self.dueDate = (theChosen?.dueDate)! as Date
            self.priority = (theChosen?.priority)!
            self.details = (theChosen?.details)!

        }

        
        
        
        
        navigationOptions = RowNavigationOptions.Enabled.union(.StopDisabledRow)
        animateScroll = true
        rowKeyboardSpacing = 20
        // Do any additional setup after loading the view.
<<<<<<< HEAD
        form +++ Section("ABC")
            <<< TextRow(){
                
=======
        setupForm()
    }
    
    func setupForm(){
        
        form +++ Section("ABC")
            <<< TextRow(){
>>>>>>> parent of e97babf... 9/9 update before doing the model
                $0.title = " Task "
                $0.placeholder = "e.g Interview"
                $0.value = taskSubject
                $0.onChange{[unowned self] row in
                    self.taskSubject = row.value!
                }
                
<<<<<<< HEAD
                
        }
        form +++ Section()
            <<< DateTimeRow(){
                
                $0.title = "Due Date"
                $0.dateFormatter = type(of: self).dateFormatter
                $0.minimumDate = Date()
                $0.value = dueDate
                $0.onChange({[unowned self] row in
                    if let date = row.value{
                        self.dueDate = date
                        
                    }})
            }
            <<< SegmentedRow<String>() {
                $0.title = "Priority"
                $0.options = ["L", "M", "H"]
                $0.value = priority
                $0.onChange({[unowned self] row in
                    if let option = row.value{
                        self.priority = option
                    }})
=======
        }
        form +++ Section()
            <<< DateTimeRow(){
                let date = NSDate()
                let dateFormatter = NSDateFormatter()
                
                $0.title = "Due Date"
                $0.minimumDate = Date(timeIntervalSinceNow: 0)
                $0.value = date as Date
>>>>>>> parent of e97babf... 9/9 update before doing the model
            }
            +++ Section()
            <<< TextAreaRow(){
                $0.placeholder = "Details"
                $0.value = details
                $0.onChange({[unowned self] row in
                    if let typedDetails = row.value{
                        self.details = typedDetails
                    }})
                
        }
        
        
    }
<<<<<<< HEAD
    /*
     func setupForm(){
     
     form +++ Section("ABC")
     <<< TextRow(){
     $0.title = " Task "
     $0.placeholder = "e.g Interview"
     $0.value = taskSubject
     $0.onChange{[unowned self] row in
     self.taskSubject = row.value!
     }
     
     }
     form +++ Section()
     <<< DateTimeRow(){
     
     $0.title = "Due Date"
     $0.dateFormatter = type(of: self).dateFormatter
     $0.minimumDate = Date()
     $0.value = dueDate
     $0.onChange({[unowned self] row in
     if let date = row.value{
     self.dueDate = date
     
     }})
     }
     <<< SegmentedRow<String>() {
     $0.title = "Priority"
     $0.options = ["L", "M", "H"]
     $0.value = priority
     }
     +++ Section()
     <<< TextAreaRow(){
     $0.placeholder = "Details"
     $0.value = details
     
     
     }
     }
     */
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d yyyy, h mm:a"
        return formatter
    }()
    
    
=======
    
    
    
>>>>>>> parent of e97babf... 9/9 update before doing the model
    
}
