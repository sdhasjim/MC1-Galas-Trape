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
    var timer = TimeInterval()
    override func viewDidLoad() {
        super.viewDidLoad()
//        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: "updateCounter", userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
        updateCounter()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectDate(_ sender: Any) {
    }
    
    @IBAction func selectList(_ sender: Any) {
        
    }
    
    func updateCounter() {
        let timeLeft = endDatePicker.date.timeIntervalSinceNow - startDatePicker.date.timeIntervalSinceNow
        countingLabel.text = timeLeft.time
    }

}

extension TimeInterval {
    var time:String {
        return String(format:"%02dd %02dh %02dm %02ds", Int((self/86400)), Int((self/3600.0)), Int((self/60.0)), Int((self)))
    }
}
