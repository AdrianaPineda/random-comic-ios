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

    var value: Int {
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

    func fillStarsWithRating(rating: Int) {
        firstStar.image = UIImage(named: rating >= StarRating.one.value ? StarImageNames.filled : StarImageNames.emptied)
        secondStar.image = UIImage(named: rating >= StarRating.two.value ? StarImageNames.filled : StarImageNames.emptied)
        thirdStar.image = UIImage(named: rating >= StarRating.three.value ? StarImageNames.filled : StarImageNames.emptied)
        fourthStar.image = UIImage(named: rating >= StarRating.four.value ? StarImageNames.filled : StarImageNames.emptied)
        fifthStar.image = UIImage(named: rating >= StarRating.five.value ? StarImageNames.filled : StarImageNames.emptied)

        delegate?.didRate(rating: rating)
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

    func setRating(rating: Int) {
        fillStarsWithRating(rating: rating)
    }
}
