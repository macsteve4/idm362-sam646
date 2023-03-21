//
//  ViewController.swift
//  idm362-sam646
//
//  Created by Steven M. on 1/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayname: UITextField!
    
    public var completionHandler: ((String?) -> Void)?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setname(_ sender: Any) {
        completionHandler?(displayname.text)
    }
    
    /*
    @IBAction func didTapSet() {
        
        completionHandler?(displayname.text)
        
    }
    */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      view.endEditing(true)
    }
    
}

