//
//  ViewControllerCheck.swift
//  PostureCheck
//
//  Created by Steven M. on 3/1/23.
//

import UIKit
import CoreData

class ViewControllerCheck: UIViewController {
    
    
    var vCounter:Int = 0
    
    @IBAction func addstreakButton(_ sender: Any) {
        vCounter += 1
        /* // make this somehow passthrough
        streaknumberLabel.text = String
         */
    }
    
    // Link Check core data to the checkobj
    var checkObj: [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContent = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Check")
        
        do {
            checkObj = try managedContent.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error.userInfo)")
        }
        
    }
    
    
    
}

