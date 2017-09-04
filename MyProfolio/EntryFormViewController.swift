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
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Form(context: context)
        task.task = taskSubject
        task.dueDate = date as NSDate
        task.priority = priority
        task.details = details
        
        print("success")
        // save the data 
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
    
    var taskSubject = String()
    var date = Date()
    var details = String()
    var priority = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationOptions = RowNavigationOptions.Enabled.union(.StopDisabledRow)
        animateScroll = true
        rowKeyboardSpacing = 20
        // Do any additional setup after loading the view.
        setupForm()
    }
    
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
                let date = NSDate()
                let dateFormatter = NSDateFormatter()
                
                $0.title = "Due Date"
                $0.minimumDate = Date(timeIntervalSinceNow: 0)
                $0.value = date as Date
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
    
    
    
    
}
