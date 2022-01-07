//
//  ViewController.swift
//  ios_2021_mid_exam
//
//  Created by Vladimir Yanakiev on 7.01.22.
//

import UIKit
import AVKit

class HomeViewController: UIViewController {
    
    let imageTableView = ImageTableView(frame: .zero, style: .plain)
    
    private let model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        imageTableView.delegate = self
        imageTableView.dataSource = self
        
        view.addSubview(imageTableView)
        
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            imageTableView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            imageTableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -10),
            imageTableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 10),
            imageTableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -10)
        ])
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.memories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = imageTableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
        
        cell.configure(withModel: model.memories[indexPath.row])
        
        return cell
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        400
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if model.memories[indexPath.row].isImage {
            let imageViewController = ImageViewController(withModel: model.memories[indexPath.row])
            navigationController?.pushViewController(imageViewController, animated: true)
            return
        }
        
        let videoViewController = VideoViewController(withModel: model.memories[indexPath.row])
        navigationController?.pushViewController(videoViewController, animated: true)
    }
}

