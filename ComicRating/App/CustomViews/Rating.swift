//
//  Rating.swift
//  ComicRating
//
//  Created by Adriana Pineda on 11/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

enum StarRating: String {
    case One = "star_one"
    case Two = "star_two"
    case Three = "star_three"
    case Four = "star_four"
    case Five = "star_five"

    var value: Int {
        switch self {
            case .One:
                return 1
            case .Two:
                return 2
            case .Three:
                return 3
            case .Four:
                return 4
            default:
                return 5
        }
    }

}

let filledImageStarName = "filled_star"
let emptiedImageStarName = "emptied_star"

class Rating: UIView {
    @IBOutlet var container: UIView!

    @IBOutlet var firstStar: UIImageView!
    @IBOutlet var secondStar: UIImageView!
    @IBOutlet var thirdStar: UIImageView!
    @IBOutlet var fourthStar: UIImageView!
    @IBOutlet var fifthStar: UIImageView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }

    private func setupView() {
        Bundle.main.loadNibNamed("Rating", owner: self, options: nil)
        addSubview(self.container)
        self.container.frame = self.bounds
        self.container.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

    // MARK: - Clicked Star

    @IBAction func didClickStar(_ gesture: UITapGestureRecognizer) {
        guard let identifier = gesture.view?.accessibilityIdentifier else {
            return
        }

        guard let rating = StarRating(rawValue: identifier) else {
            return
        }

        self.fillStarsWithRating(rating: rating.value)
    }

    func fillStarsWithRating(rating: Int) {
        self.firstStar.image = UIImage(named: rating >= StarRating.One.value ? filledImageStarName : emptiedImageStarName)
        self.secondStar.image = UIImage(named: rating >= StarRating.Two.value ? filledImageStarName : emptiedImageStarName)
        self.thirdStar.image = UIImage(named: rating >= StarRating.Three.value ? filledImageStarName : emptiedImageStarName)
        self.fourthStar.image = UIImage(named: rating >= StarRating.Four.value ? filledImageStarName : emptiedImageStarName)
        self.fifthStar.image = UIImage(named: rating >= StarRating.Five.value ? filledImageStarName : emptiedImageStarName)
    }
}
