//
//  ViewController.swift
//  MyProfolio
//
//  Created by Jack Wong on 2017/08/27.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addNewToDo(_ sender: Any) {
        
        performSegue(withIdentifier: "formSegue", sender: self)
        
    }
    var forms : [Form] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = " To-Do-List "
        tableView.delegate = self
        tableView.dataSource = self
        print(forms)
    }

    override func viewWillAppear(_ animated: Bool) {
        
        getData()
        tableView.reloadData()
        
<<<<<<< HEAD
    }
    
    @IBAction func editTable(_ sender: Any) {
        
        
        tableView.allowsMultipleSelectionDuringEditing = true
        tableView.isEditing = !tableView.isEditing
        
        switch tableView.isEditing {
        case true:
            editButton.title = "Cancel"
            toolBarInEditing.isHidden = false
            
        case false:
            editButton.title = "Edit"
            toolBarInEditing.isHidden = true
        }
        
    }
    
    @IBAction func multiAction(_ sender: Any) {
    }
    
    
    @IBAction func deleteTask(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        if  let indexPaths = tableView.indexPathsForSelectedRows {
            
            for item in indexPaths {
                context.delete(forms[item.row])
            }
            
        }
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        do{
            forms = try context.fetch(Form.fetchRequest())
        }catch{
            print("Fetching failed")
        }
        tableView.reloadData()
        
        
    }
    
<<<<<<< HEAD
=======
            }
    
    

>>>>>>> parent of e97babf... 9/9 update before doing the model
=======
    
    
    
    
    
>>>>>>> parent of 50afe23... 9/10 updated version
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let form = forms[indexPath.row]
        
        cell.textLabel?.text = form.task
        
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func getData(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do{
        forms = try context.fetch(Form.fetchRequest())
        }catch {
            print("Failed to fetch any result")
        }
        
    }
    
<<<<<<< HEAD
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        
        
        if editingStyle == .delete {
            
            let row = forms[indexPath.row]
            context.delete(row)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do{
                forms = try context.fetch(Form.fetchRequest())
            }catch{
                print("Fetching failed")
            }
            tableView.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        //if !tableView.isEditing {
        //performSegue(withIdentifier: "formSegue", sender: self)
         
           /*
            let formViewController = EntryFormViewController()
             formViewController.taskSubject = forms[indexPath.row].task!
           print(formViewController.taskSubject)
           */
            
           
        
        
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .none
    }
    
    func toString(date: NSDate) -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MMM-YYYY"
        let str = formatter.string(from: date as Date)
        return str
        
        
    }
    
   
    
<<<<<<< HEAD
    
    
=======
    
>>>>>>> parent of e97babf... 9/9 update before doing the model
=======

>>>>>>> parent of 50afe23... 9/10 updated version
}
















