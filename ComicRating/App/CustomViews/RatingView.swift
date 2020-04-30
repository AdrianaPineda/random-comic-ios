//
//  RatingView.swift
//  ComicRating
//
//  Created by Adriana Pineda on 11/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

private enum StarRating: String {
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
        firstStar.image = UIImage(named: rating >= StarRating.One.value ? StarImageNames.filled : StarImageNames.emptied)
        secondStar.image = UIImage(named: rating >= StarRating.Two.value ? StarImageNames.filled : StarImageNames.emptied)
        thirdStar.image = UIImage(named: rating >= StarRating.Three.value ? StarImageNames.filled : StarImageNames.emptied)
        fourthStar.image = UIImage(named: rating >= StarRating.Four.value ? StarImageNames.filled : StarImageNames.emptied)
        fifthStar.image = UIImage(named: rating >= StarRating.Five.value ? StarImageNames.filled : StarImageNames.emptied)

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
