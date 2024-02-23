//
//  ShowTableView.swift
//  M7_JCW_TableView
//
//  Created by Justin Woodard on 2/22/24.
//

import UIKit

class ShowTableView: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    var label : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        outputLabel.text = label
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
