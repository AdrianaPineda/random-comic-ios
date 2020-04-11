//
//  Rating.swift
//  ComicRating
//
//  Created by Adriana Pineda on 11/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class Rating: UIView {

    @IBOutlet var container: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        Bundle.main.loadNibNamed("Rating", owner: self, options: nil)
        addSubview(self.container)
        self.container.frame = self.bounds
        self.container.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
