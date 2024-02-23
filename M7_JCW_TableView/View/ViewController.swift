//
//  ViewController.swift
//  M7_JCW_TableView
//
//  Created by Justin Woodard on 2/22/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var classes = TableLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = classes.courses[indexPath.row].name
        content.secondaryText = classes.courses[indexPath.row].number
        cell.contentConfiguration  = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        classes.setSelection(indexPath.row)
        tableView.scrollToNearestSelectedRow(at: .top, animated: true)
        self.performSegue(withIdentifier: "toShowTable", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toShowTable" {
            // Downcast to the desired view controller
            if let toSegue = segue.destination as? ShowTableView {
                // Configure the destination view controller here (e.g., pass data)
                toSegue.label = classes.courses[classes.selection].name
            }
        }
    }
}
