//
//  StarView.swift
//  ComicRating
//
//  Created by Adriana Pineda on 28/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

class StarView: UIView {
    private let pointOnStar = 5
    var fillColor: UIColor? { didSet { setNeedsDisplay() } }

    override func draw(_ rect: CGRect) {
        fillColor?.setFill()

        let path = UIBezierPath()
        let center = CGPoint(x: rect.width / 2.0, y: rect.height / 2.0)
        let xCenter: CGFloat = center.x
        let yCenter: CGFloat = center.y
        let width = rect.width
        let radius = width / 2.0
        let polySide = CGFloat(pointOnStar)
        let theta = 2.0 * Double.pi * Double(2.0 / polySide)
        path.move(to: CGPoint(x: xCenter, y: -1 * radius + yCenter))
        for index in 1 ..< Int(polySide) {
            let xValue: CGFloat = radius * CGFloat(sin(Double(index) * theta))
            let yValue: CGFloat = radius * CGFloat(cos(Double(index) * theta))
            path.addLine(to: CGPoint(x: xValue + xCenter, y: -1 * yValue + yCenter))
        }
        path.close()
        path.fill()
    }
}
