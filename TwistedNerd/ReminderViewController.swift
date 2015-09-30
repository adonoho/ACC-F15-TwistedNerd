//
//  ReminderViewController.swift
//  TwistedNerd
//
//  Created by Andrew Donoho on 9/28/15.
//  Copyright © 2015 Donoho Design Group, LLC. All rights reserved.
//

import UIKit

class ReminderViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        log.debug("Loaded")

    }

    override func viewWillAppear(animated: Bool) {

        datePicker?.minimumDate = NSDate(timeIntervalSinceNow: 10)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func remindMeAction(sender: UIButton) {

        log.debug("Remind Brenton")

        let date = datePicker.date

        log.debug("Picker Date: \(date)")

        let notification = UILocalNotification()
        notification.alertBody = "Reminder: \(date)"
        notification.fireDate = date

        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
