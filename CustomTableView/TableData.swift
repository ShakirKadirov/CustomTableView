//
//  Content.swift
//  CustomTableView
//
//  Created by Shakir Kadirov on 28.01.2024.
//

import UIKit


struct TableData{
    var image: Images
    var title: Titles
    var paragraph: String
}



enum Images {
    case iphoneImg
    case macbookImg
    case ipadImg
    case airpodsImg
    case displayImg
    case visionImg

    func getImage() -> UIImage? {
        switch self {
        case .iphoneImg:
            return UIImage(named: "iphoneImage")
        case .macbookImg:
            return UIImage(named: "macbookImage")
        case .ipadImg:
            return UIImage(named: "ipadImage")
        case .airpodsImg:
            return UIImage(named: "airpodsImage")
        case .displayImg:
            return UIImage(named: "displayImage")
        case .visionImg:
            return UIImage(named: "visionproImage")
        }
    }
}


enum Titles {
    case iphone
    case macbook
    case ipad
    case airpods
    case display
    case vision
    
    var titleCase: String {
        switch self{
        case .iphone:
            return "iPhone"
        case .macbook:
            return "Mac Book Pro"
        case .ipad:
            return "iPad"
        case .airpods:
            return "AirPods Max"
        case .display:
            return "Studio Display"
        case .vision:
            return "Vision Pro"
        }
    }
}
