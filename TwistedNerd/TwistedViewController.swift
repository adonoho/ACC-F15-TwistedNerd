//
//  TwistedViewController.swift
//  TwistedSister
//
//  Created by Andrew Donoho on 9/21/15.
//  Copyright © 2015 Donoho Design Group, LLC. All rights reserved.
//

import UIKit

class TwistedViewController: UIViewController {

    var twistedView: TwistedView?

    override func viewDidLoad() {
        super.viewDidLoad()

        log.debug("Twist it baby!")

        if twistedView == nil {

            let frame = view.bounds
            let tv = TwistedView(frame: frame)

            tv.backgroundColor = UIColor.whiteColor()
            view.addSubview(tv)

            twistedView = tv
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

