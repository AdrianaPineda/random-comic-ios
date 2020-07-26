//
//  ComicHistoryViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ComicHistoryCell"

class ComicHistoryViewController: UICollectionViewController {
    var output: ComicHistoryViewOutput!

    private let sections = 1
    private let minCellWidth = 200
    private let cellHeight = 120
    private let sectionInsets = UIEdgeInsets(top: 10.0,
                                             left: 8,
                                             bottom: 10.0,
                                             right: 8)
    private let starSize = CGSize(width: 20, height: 20)

    private var comics: [ComicForCell] = []
    private var animateImageViews = false

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "ComicHistoryCell", bundle: nil),
                                forCellWithReuseIdentifier: reuseIdentifier)

        // Take into account safe area for content adjustment
        collectionView.contentInsetAdjustmentBehavior = .always
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        output.viewIsReady()
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.collectionViewLayout.invalidateLayout()
        super.viewWillTransition(to: size, with: coordinator)
    }

    // MARK: ComicHistoryViewInput

    func setupInitialState() {}
}

// MARK: UICollectionViewDataSource

extension ComicHistoryViewController {
    override func numberOfSections(in _: UICollectionView) -> Int {
        return sections
    }

    override func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        return comics.count
    }

    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let comicHistoryCell = cell as? ComicHistoryCell else { return cell }

        // Configure the cell
        let comic = comics[indexPath.row]
        comicHistoryCell.comicLabel.text = "\(comic.title) (#\(comic.number))"
        comicHistoryCell.ratingView.setStarSize(size: starSize)
        comicHistoryCell.ratingView.fillStarsWithRating(rating: comic.rating)
        if let image = getImageForComic(comic) {
            comicHistoryCell.imageView.hideSkeleton()
            comicHistoryCell.imageView.image = image
        } else {
            if animateImageViews {
                comicHistoryCell.imageView.showAnimatedGradientSkeleton()
            }
        }

        return cell
    }

    fileprivate func getImageForComic(_ comic: ComicForCell) -> UIImage? {
        guard let image = comic.img else {
            return nil
        }
        var uiImage: UIImage?
        switch image {
        case let .data(value):
            uiImage = UIImage(data: value)
        case let .name(value):
            uiImage = UIImage(named: value)
        }
        return uiImage
    }
}

// MARK: - Collection View Flow Layout Delegate

extension ComicHistoryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_: UICollectionView,
                        layout _: UICollectionViewLayout,
                        sizeForItemAt _: IndexPath) -> CGSize {
        let padding = Int(sectionInsets.left + sectionInsets.right)
        let currentSize = Int(view.safeAreaLayoutGuide.layoutFrame.width)
        let cells = currentSize / (minCellWidth + padding)
        let cellsWithPaddingWidth = cells > 0 ? currentSize / cells : currentSize
        let cellsWidth = cellsWithPaddingWidth - padding

        return CGSize(width: cellsWidth, height: cellHeight)
    }

    func collectionView(_: UICollectionView,
                        layout _: UICollectionViewLayout,
                        insetForSectionAt _: Int) -> UIEdgeInsets {
        return sectionInsets
    }

    func collectionView(_: UICollectionView,
                        layout _: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt _: Int) -> CGFloat {
        return sectionInsets.left
    }
}

extension ComicHistoryViewController: ComicHistoryViewInput {
    func showComics(comics: [ComicForCell]) {
        self.comics = comics
        collectionView.reloadData()
    }

    func showImageAtIndex(index: Int, image: ComicImage) {
        let indexPath = IndexPath(row: index, section: 0)
        comics[index].img = image
        collectionView.reloadItems(at: [indexPath])
    }

    func showLoadingOnImages() {
        animateImageViews = true
    }
}
