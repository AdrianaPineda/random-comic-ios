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

enum StarColorNames: String {
    case enabled = "Enabled"
    case disabled = "Disabled"
}

class RatingView: UIView, RatingInterface {
    @IBOutlet var container: UIView!

    @IBOutlet var firstStar: StarView!
    @IBOutlet var secondStar: StarView!
    @IBOutlet var thirdStar: StarView!
    @IBOutlet var fourthStar: StarView!
    @IBOutlet var fifthStar: StarView!

    @IBOutlet var starHeight: NSLayoutConstraint!
    @IBOutlet var starWidth: NSLayoutConstraint!

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
        let firstStarColorName = getStarColorName(rating: rating, starRating: StarRating.one)
        firstStar.fillColor = UIColor(named: firstStarColorName)

        let secondStarColorName = getStarColorName(rating: rating, starRating: StarRating.two)
        secondStar.fillColor = UIColor(named: secondStarColorName)

        let thirdStarColorName = getStarColorName(rating: rating, starRating: StarRating.three)
        thirdStar.fillColor = UIColor(named: thirdStarColorName)

        let fourthStarColorName = getStarColorName(rating: rating, starRating: StarRating.four)
        fourthStar.fillColor = UIColor(named: fourthStarColorName)

        let fifthStarColorName = getStarColorName(rating: rating, starRating: StarRating.five)
        fifthStar.fillColor = UIColor(named: fifthStarColorName)

        delegate?.didRate(rating: rating)
    }

    private func getStarColorName(rating: UInt8, starRating: StarRating) -> String {
        return rating >= starRating.value ? StarColorNames.enabled.rawValue : StarColorNames.disabled.rawValue
    }

    // MARK: - RatingInterface

    func resetRating() {
        firstStar.fillColor = UIColor(named: StarColorNames.disabled.rawValue)
        secondStar.fillColor = UIColor(named: StarColorNames.disabled.rawValue)
        thirdStar.fillColor = UIColor(named: StarColorNames.disabled.rawValue)
        fourthStar.fillColor = UIColor(named: StarColorNames.disabled.rawValue)
        fifthStar.fillColor = UIColor(named: StarColorNames.disabled.rawValue)
    }

    func setRating(rating: UInt8) {
        fillStarsWithRating(rating: rating)
    }

    func setStarSize(size: CGSize) {
        starWidth.constant = size.width
        starHeight.constant = size.height
    }
}

extension RatingView {
    @IBInspectable var starSize: CGSize {
        set(newValue) {
            setStarSize(size: newValue)
        }
        get {
            CGSize(width: starWidth.constant, height: starHeight.constant)
        }
    }
}
