//
//  MySkeletonView.swift
//  ComicRating
//
//  Created by Adriana Pineda on 23/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

extension UIView {
    func animateSkeletonView() {
        let startLocations: [NSNumber] = [-1.0, -0.5, 0.0]
        let endLocations: [NSNumber] = [1.0, 1.5, 2.0]

        let gradientLayer = self.configureGradientLayer(startLocations: startLocations)
        self.layer.addSublayer(gradientLayer)

        let (animation, animationGroup) = self.configureAnimation(startLocations: startLocations, endLocations: endLocations)
        gradientLayer.add(animationGroup, forKey: animation.keyPath)
    }

    private func configureGradientLayer(startLocations:  [NSNumber]) -> CAGradientLayer {
        let gradientBackgroundColor: CGColor = UIColor(white: 0.85, alpha: 1.0).cgColor
        let gradientMovingColor: CGColor = UIColor(white: 0.75, alpha: 1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = [
            gradientBackgroundColor,
            gradientMovingColor,
            gradientBackgroundColor
        ]
        gradientLayer.locations = startLocations

        return gradientLayer
    }

    private func configureAnimation(startLocations: [NSNumber], endLocations:  [NSNumber]) -> (CABasicAnimation, CAAnimationGroup)  {
        let movingAnimationDuration: CFTimeInterval = 1.8
        let delayBetweenAnimationLoops: CFTimeInterval = 0.3

        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = startLocations
        animation.toValue = endLocations
        animation.duration = movingAnimationDuration
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)

        let animationGroup = CAAnimationGroup()
        animationGroup.duration = movingAnimationDuration + delayBetweenAnimationLoops
        animationGroup.animations = [animation]
        animationGroup.repeatCount = .infinity

        return (animation, animationGroup)
    }

    func stopSkeletonViewAnimation() {
        self.layer.sublayers = self.layer.sublayers?.filter { theLayer in
            !theLayer.isKind(of: CAGradientLayer.classForCoder())
        }
    }
}
