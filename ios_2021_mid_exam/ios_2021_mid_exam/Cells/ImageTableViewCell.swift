//
//  ImageTableViewCell.swift
//  ios_2021_mid_exam
//
//  Created by Vladimir Yanakiev on 7.01.22.
//

import Foundation
import UIKit
import AVKit

class ImageTableViewCell: UITableViewCell {
    
    static let identifier = "ImageTableViewCellID"
    
    private let titleLabel = UILabel()
    private let dateLabel = UILabel()
    private let memoryImageView = UIImageView()
    private let descriptionLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        backgroundColor = .black
        layer.cornerRadius = 8
        
        setupLabel(titleLabel)
        setupLabel(dateLabel)
        setupImageView(memoryImageView)
        setupLabel(descriptionLabel)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(memoryImageView)
        contentView.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            
            memoryImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            memoryImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            memoryImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: memoryImageView.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel(_ label: UILabel) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
    }
    
    private func setupImageView(_ imageView: UIImageView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configure(withModel model: Memory) {
        titleLabel.text = model.title
        dateLabel.text = model.date
        if model.isImage {
            memoryImageView.image = UIImage(named: model.asset)?.resizeImage(height: 250)
        } else {
            let asset = AVURLAsset(url: NSURL(fileURLWithPath: model.asset) as URL, options: nil)
            let imgGenerator = AVAssetImageGenerator(asset: asset)
            guard let cgImage = try? imgGenerator.copyCGImage(at: CMTimeMake(value: 0, timescale: 1), actualTime: nil) else {
                // descriptionLabel left out :/
                return
            }
            memoryImageView.image = UIImage(cgImage: cgImage)
        }
        descriptionLabel.text = model.description
    }
    
}
