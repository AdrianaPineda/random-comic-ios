//
//  RatingView.swift
//  ComicRating
//
//  Created by Adriana Pineda on 11/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

private enum StarRating: String {
    case one = "star_one"
    case two = "star_two"
    case three = "star_three"
    case four = "star_four"
    case five = "star_five"

    var value: UInt8 {
        switch self {
        case .one:
            return 1
        case .two:
            return 2
        case .three:
            return 3
        case .four:
            return 4
        default:
            return 5
        }
    }
}

private struct StarImageNames {
    static let filled = "filled_star"
    static let emptied = "emptied_star"
}

class RatingView: UIView {
    @IBOutlet var container: UIView!

    @IBOutlet var firstStar: UIImageView!
    @IBOutlet var secondStar: UIImageView!
    @IBOutlet var thirdStar: UIImageView!
    @IBOutlet var fourthStar: UIImageView!
    @IBOutlet var fifthStar: UIImageView!

    weak var delegate: RatingDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        Bundle.main.loadNibNamed("RatingView", owner: self, options: nil)
        addSubview(container)
        container.frame = bounds
        container.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

    // MARK: - Clicked Star

    @IBAction func didClickStar(_ gesture: UITapGestureRecognizer) {
        guard let identifier = gesture.view?.accessibilityIdentifier else {
            return
        }

        guard let rating = StarRating(rawValue: identifier) else {
            return
        }

        fillStarsWithRating(rating: rating.value)
    }

    func fillStarsWithRating(rating: UInt8) {
        let firstStarImageName = getImageName(rating: rating, starRating: StarRating.one)
        firstStar.image = UIImage(named: firstStarImageName)

        let secondStarImageName = getImageName(rating: rating, starRating: StarRating.two)
        secondStar.image = UIImage(named: secondStarImageName)

        let thirdStarImageName = getImageName(rating: rating, starRating: StarRating.three)
        thirdStar.image = UIImage(named: thirdStarImageName)

        let fourthStarImageName = getImageName(rating: rating, starRating: StarRating.four)
        fourthStar.image = UIImage(named: fourthStarImageName)

        let fifthStarImageName = getImageName(rating: rating, starRating: StarRating.five)
        fifthStar.image = UIImage(named: fifthStarImageName)

        delegate?.didRate(rating: rating)
    }

    private func getImageName(rating: UInt8, starRating: StarRating) -> String {
        return rating >= starRating.value ? StarImageNames.filled : StarImageNames.emptied
    }
}

extension RatingView: RatingInterface {
    func resetRating() {
        firstStar.image = UIImage(named: StarImageNames.emptied)
        secondStar.image = UIImage(named: StarImageNames.emptied)
        thirdStar.image = UIImage(named: StarImageNames.emptied)
        fourthStar.image = UIImage(named: StarImageNames.emptied)
        fifthStar.image = UIImage(named: StarImageNames.emptied)
    }

    func setRating(rating: UInt8) {
        fillStarsWithRating(rating: rating)
    }
}
