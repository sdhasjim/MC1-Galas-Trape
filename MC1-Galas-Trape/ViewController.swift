//
//  ViewController.swift
//  MC1-Galas-Trape
//
//  Created by Samuel Dennis on 07/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "RENZO"
        return cell
    }

//    @IBOutlet weak var cityname: UILabel!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
           {
           case 0:
               labelText.text = "Bandung, Indonesia"
           case 1:
               labelText.text = "Yogyakarta, Indonesia"
           default:
               break
           }
    }
    
    
    //
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }

}

