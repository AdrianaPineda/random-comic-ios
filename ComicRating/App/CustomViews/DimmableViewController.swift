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
        self.dimView.frame = self.view.frame
        self.dimView.backgroundColor = color
        self.dimView.alpha = alpha ?? 0
        self.view.addSubview(self.dimView)
    }

    func removeDim() {
        self.dimView.removeFromSuperview()
    }
}
