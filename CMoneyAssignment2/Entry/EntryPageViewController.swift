//
//  EntryPageViewController.swift
//  CMoneyAssignment2
//
//  Created by Sean.Yue on 2021/2/3.
//

import UIKit

class EntryPageViewController: UIViewController {

    var viewModel: EntryPageViewModel
    var titleLabel: UILabel!
    var nextPageBtn: UIButton!
    
    init(vm: EntryPageViewModel) {
        self.viewModel = vm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        //TODO:(Sean) vm assignment
        self.viewModel = EntryPageViewModel()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuration()
    }
    
    func configuration() {
        self.titleLabel = self.createTitle()
        self.nextPageBtn = self.createNextPageButton()
    }
    
    func createTitle() -> UILabel {
        let title = UILabel()
        title.text = "Astronomy Picture of the Day"
        title.textColor = .black
        title.textAlignment = .center
        title.font = UIFont(name: "PingFangSC-Regular", size: 16)
        return title
    }
    
    func createNextPageButton() -> UIButton {
        let button = UIButton()
        button.setTitle("Request", for: .normal)
        button.titleLabel?.textColor = .systemBlue
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.addTarget(self, action: #selector(nextPageAction), for: .touchUpInside)
        return button
    }
    
    @objc func nextPageAction() {
        //TODO:(Sean) init
        let listVC = UIViewController()
        self.navigationController?.pushViewController(listVC, animated: true)
    }

}
