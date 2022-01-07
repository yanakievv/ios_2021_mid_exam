//
//  ImageTableView.swift
//  ios_2021_mid_exam
//
//  Created by Vladimir Yanakiev on 7.01.22.
//

import Foundation
import UIKit

class ImageTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        register(ImageTableViewCell.self, forCellReuseIdentifier: ImageTableViewCell.identifier)
        
        translatesAutoresizingMaskIntoConstraints = false
        separatorStyle = .none
        backgroundColor = .black
        showsVerticalScrollIndicator = false
        allowsSelection = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
