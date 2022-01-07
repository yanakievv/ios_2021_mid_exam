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
    
    init(withModel model: Memory) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = UIImage(named: model.asset)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = imageView
    }
}
