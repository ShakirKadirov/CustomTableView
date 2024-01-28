//
//  CustomTableViewCell.swift
//  CustomTableView
//
//  Created by Shakir Kadirov on 28.01.2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let reuseID = "tableCell"
    
    lazy var cellView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubview(customImage)
        $0.addSubview(customTitle)
        $0.addSubview(customParagraph)
        return $0
    }(UIView())
    
    lazy var customImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var customTitle: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var customParagraph: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(cellView)
    }
    
    
    func setUpCell(image: Data, title: String, paragraph: String){
        customImage.image = UIImage()
        customTitle.text = title
        customParagraph.text = paragraph
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
