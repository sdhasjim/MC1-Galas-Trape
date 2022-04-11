//
//  AddDestinationViewController.swift
//  galas
//
//Ceated by Fariz Rizky Rizaldy on 04/04/22.
//

import UIKit

class AddDestinationViewController: UIViewController {

    @IBOutlet weak var countingLabel: UILabel!
    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var endDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        filteredData = data
//        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: "updateCounter", userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
//        if (endDatePicker != nil) {
//            updateCounter()
//        }
//        tblview.dataSource = self
//        searchBar.delegate = self
//        filteredData = data

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func insertEnd(_ sender: Any) {
        updateCounter()
    }
    
    @IBAction func insertStart(_ sender: Any) {
        updateCounter()
    }
    
    func updateCounter() {
        let timeLeft = endDatePicker.date.timeIntervalSinceNow - startDatePicker.date.timeIntervalSinceNow
        countingLabel.text = timeLeft.time
    }
    
//    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as UITableViewCell
//        cell.textLabel?.text = filteredData[indexPath.row]
//        return cell
//    }
//
//    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return filteredData.count
//    }

}

extension TimeInterval {
    var time:String {
        return String(format:"%2d", Int((self/86400)+1), Int((self/3600.0)), Int((self/60.0)), Int((self)))
    }
    
//    %02dh %02dm %02ds
}
