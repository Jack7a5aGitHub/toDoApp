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
        
            }
    
    

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
    
    
}
















