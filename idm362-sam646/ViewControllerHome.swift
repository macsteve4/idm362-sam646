//
//  ViewControllerHome.swift
//  PostureCheck
//
//  Created by Steven M. on 3/1/23.
//

import UIKit

class ViewControllerHome: UIViewController {

    @IBOutlet weak var streaknumberLabel: UILabel!
    @IBOutlet weak var frontname: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = storyboard?.instantiateViewController(withIdentifier: "options") as! ViewController
        vc.completionHandler = { text in
            self.frontname.text = text
        }
    }
        // Do any additional setup after loading the view.
     

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
