//
//  StarView.swift
//  ComicRating
//
//  Created by Adriana Pineda on 28/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

class StarView: UIView {
    let color: UIColor = UIColor.blue

    override func draw(_ rect: CGRect) {
        color.setFill()

        let path = UIBezierPath()
        let center = CGPoint(x: rect.width / 2.0, y: rect.height / 2.0)
        let xCenter: CGFloat = center.x
        let yCenter: CGFloat = center.y
        let width = rect.width
        let radius = width / 2.0
        let flip: CGFloat = -1.0 // use this to flip the figure 1.0 or -1.0
        let polySide = CGFloat(5)
        let theta = 2.0 * Double.pi * Double(2.0 / polySide)
        path.move(to: CGPoint(x: xCenter, y: radius * flip + yCenter))
        for index in 1 ..< Int(polySide) {
            let xValue: CGFloat = radius * CGFloat(sin(Double(index) * theta))
            let yValue: CGFloat = radius * CGFloat(cos(Double(index) * theta))
            path.addLine(to: CGPoint(x: xValue + xCenter, y: yValue * flip + yCenter))
        }
        path.close()
        path.fill()
    }
}
