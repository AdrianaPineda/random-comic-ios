//
//  ComicHistoryViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ComicHistoryCell"

class ComicHistoryViewController: UICollectionViewController, ComicHistoryViewInput {
    var output: ComicHistoryViewOutput!

    let sections = 1
    private let minCellWidth = 200
    private let cellHeight = 120
    private let sectionInsets = UIEdgeInsets(top: 10.0,
                                             left: 8,
                                             bottom: 10.0,
                                             right: 8)

    var items: [String] = ["Sample 1", "Sample 2", "Sample 3"]

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "ComicHistoryCell", bundle: nil),
                                forCellWithReuseIdentifier: reuseIdentifier)

        // Take into account safe area for content adjustment
        collectionView.contentInsetAdjustmentBehavior = .always

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
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let comicHistoryCell = cell as? ComicHistoryCollectionViewCell else { return cell }

        // Configure the cell
        comicHistoryCell.comicLabel.text = items[indexPath.row]

        return cell
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
        let cellsWithPaddingWidth = currentSize / cells
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
