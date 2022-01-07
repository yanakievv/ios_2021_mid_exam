//
//  ImageViewController.swift
//  ios_2021_mid_exam
//
//  Created by Vladimir Yanakiev on 7.01.22.
//

import Foundation
import UIKit

class ImageViewController: UIViewController {
    private let imageView = UIImageView()
    
    private let model: Memory?
    
    init(withModel model: Memory) {
        self.model = model
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let model = model else {
            return
        }

        imageView.image = UIImage(named: model.asset)?.resizeImage(width: UIScreen.main.bounds.size.width)
        
        let titleLabel = UILabel()
        titleLabel.text = model.title
        titleLabel.textColor = .white
        navigationItem.titleView = titleLabel
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        imageView.image = UIImage(named: model?.asset ?? "")?.resizeImage(width: UIScreen.main.bounds.size.width)
    }
}
