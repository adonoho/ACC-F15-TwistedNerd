//
//  TwistedView.swift
//  TwistedSister
//
//  Created by Andrew Donoho on 9/21/15.
//  Copyright © 2015 Donoho Design Group, LLC. All rights reserved.
//

import UIKit

class TwistedView: UIView {

    override func drawRect(rect: CGRect) {

        let b = bounds
        let c = CGPoint(
            x: b.origin.x + b.size.width / 2.0,
            y: b.origin.y + b.size.height / 2.0)
        let maxRadius = hypot(b.size.width, b.size.height) / 2.0

        let path = UIBezierPath()

        for var radius = maxRadius; radius > 0; radius -= 20 {

            path.moveToPoint(CGPoint(x: c.x + radius, y: c.y))
            path.addArcWithCenter(c, radius: radius, startAngle: 0.0, endAngle: CGFloat(M_PI * 2.0), clockwise: true)
        }
        path.lineWidth = 10.0
        UIColor.redColor().setStroke()
        path.stroke()
    }

}
