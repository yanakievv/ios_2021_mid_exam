//
//  ImageTableViewCell.swift
//  ios_2021_mid_exam
//
//  Created by Vladimir Yanakiev on 7.01.22.
//

import Foundation
import UIKit

class ImageTableViewCell: UITableViewCell {
    
    static let identifier = "ImageTableViewCellID"
    
    let memoryImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        backgroundColor = .black
        layer.cornerRadius = 8
        
        setupImageView(memoryImageView)
        
        contentView.addSubview(memoryImageView)
        
        NSLayoutConstraint.activate([
            memoryImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            memoryImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            memoryImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            memoryImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupImageView(_ imageView: UIImageView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configure(withModel model: Memory) {
        memoryImageView.image = UIImage(named: model.asset)
    }
    
}
