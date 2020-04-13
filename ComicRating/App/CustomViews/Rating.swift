//
//  Rating.swift
//  ComicRating
//
//  Created by Adriana Pineda on 11/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

enum StarRating {
    case One
    case Two
    case Three
    case Four
    case Five

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

    static func getStarRating(identifier: String) -> StarRating {
        switch identifier {
            case "star_one":
                return StarRating.One
            case "star_two":
                return StarRating.Two
            case "star_three":
                return StarRating.Three
            case "star_four":
                return StarRating.Four
            default:
                return StarRating.Five
        }
    }
}

let filledImageStarName = "filled_star"
let emptiedImageStarName = "emptied_star"

class Rating: UIView {
    @IBOutlet var container: UIView!

    @IBOutlet var ratingOne: UIImageView!
    @IBOutlet var ratingTwo: UIImageView!
    @IBOutlet var ratingThree: UIImageView!
    @IBOutlet var ratingFour: UIImageView!
    @IBOutlet var ratingFive: UIImageView!

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
        let rating = StarRating.getStarRating(identifier: identifier)
        self.fillStarsWithRating(rating: rating.value)
    }

    func fillStarsWithRating(rating: Int) {
        self.ratingOne.image = UIImage(named: rating >= StarRating.One.value ? filledImageStarName : emptiedImageStarName)
        self.ratingTwo.image = UIImage(named: rating >= StarRating.Two.value ? filledImageStarName : emptiedImageStarName)
        self.ratingThree.image = UIImage(named: rating >= StarRating.Three.value ? filledImageStarName : emptiedImageStarName)
        self.ratingFour.image = UIImage(named: rating >= StarRating.Four.value ? filledImageStarName : emptiedImageStarName)
        self.ratingFive.image = UIImage(named: rating >= StarRating.Five.value ? filledImageStarName : emptiedImageStarName)
    }
}
