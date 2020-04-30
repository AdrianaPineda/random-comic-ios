//
//  DimmableViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 14/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class DimmableViewController: UIViewController {
    let dimView: UIView = UIView()
}

extension DimmableViewController: Dimmable {
    func addDim(color: UIColor? = UIColor.black, alpha: CGFloat? = 0.1) {
        dimView.frame = view.frame
        dimView.backgroundColor = color
        dimView.alpha = alpha ?? 0
        view.addSubview(dimView)
    }

    func removeDim() {
        dimView.removeFromSuperview()
    }
}
