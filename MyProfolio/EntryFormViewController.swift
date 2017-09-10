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
        
<<<<<<< HEAD
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Form(context: context)
        
=======
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Form(context: context)
>>>>>>> parent of e97babf... 9/9 update before doing the model
=======
       
       
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Form(context: context)
       
>>>>>>> parent of 50afe23... 9/10 updated version
        task.task = taskSubject
        task.dueDate = date as NSDate
        task.priority = priority
        task.details = details
        
        print("success")
        // save the data 
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
    
<<<<<<< HEAD
<<<<<<< HEAD
    var theChosen  : Form? = nil
=======
>>>>>>> parent of e97babf... 9/9 update before doing the model
=======
    
>>>>>>> parent of 50afe23... 9/10 updated version
    var taskSubject = String()
    var date = Date()
    var details = String()
    var priority = String()
    
<<<<<<< HEAD
<<<<<<< HEAD
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
=======
    override func viewDidLoad() {
>>>>>>> parent of e97babf... 9/9 update before doing the model
=======
    override func viewWillAppear(_ animated: Bool) {
   
>>>>>>> parent of 50afe23... 9/10 updated version
        super.viewDidLoad()
        
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
                
<<<<<<< HEAD
=======
             
>>>>>>> parent of 50afe23... 9/10 updated version
                
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
<<<<<<< HEAD
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
=======
>>>>>>> parent of 50afe23... 9/10 updated version
            }
            +++ Section()
            <<< TextAreaRow(){
                $0.placeholder = "Details"
                $0.value = details
                
                
        }

       
    }
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
<<<<<<< HEAD
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
=======
    */
  
   static let dateFormatter: DateFormatter = {
>>>>>>> parent of 50afe23... 9/10 updated version
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d yyyy, h mm:a"
        return formatter
    }()
    
<<<<<<< HEAD
    
=======
    
    
    
>>>>>>> parent of e97babf... 9/9 update before doing the model
=======
 
>>>>>>> parent of 50afe23... 9/10 updated version
    
}
