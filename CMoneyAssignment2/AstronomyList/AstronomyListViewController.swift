//
//  AstronomyListViewController.swift
//  CMoneyAssignment2
//
//  Created by Sean.Yue on 2021/2/4.
//

import UIKit

class AstronomyListViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    init(vm: AstronomyListViewModel) {
        self.collectionView = UICollectionView()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuration()
    }
    
    func configuration() {
        self.setupCollectionView()
    }
    
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        if #available(iOS 10, *) {
            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        } else {
            layout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
        self.collectionView.register(cellType: AstronomyImageCollectionViewCell.self)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.collectionViewLayout = layout
    }

}

extension AstronomyListViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(with: AstronomyImageCollectionViewCell.self, for: indexPath)
//        cell.vm = cellVMs[indexPath.row]   TODO:(Sean) cellvms
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

}
