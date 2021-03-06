//
//  SideMenuCustomCell.swift
//  ClipboardApp
//
//  Created by 이준수 on 2020/03/15.
//  Copyright © 2020 swift. All rights reserved.
//

import UIKit

class SideMenuCustomCell: UITableViewCell {
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let iconView = UIImageView()
    let labelView = UILabel()
    let detailArrowView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()

//       사이드 메뉴 뷰가 오른쪽을 부분적으로 보여지는 거라 .detailArrowView 화살표가 안보입니다. 그래서 그냥 이미지 뷰로.
//        self.accessoryType = .detailButton

        
        self.detailArrowView.image = UIImage(named: "Arrow")
        self.contentView.addSubview(iconView)
        self.contentView.addSubview(labelView)
        self.contentView.addSubview(detailArrowView)
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        labelView.translatesAutoresizingMaskIntoConstraints = false
        detailArrowView.translatesAutoresizingMaskIntoConstraints = false
        
        labelView.font.withSize(20)
        
        NSLayoutConstraint.activate([
            iconView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 25),
            iconView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -25),
            iconView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 30),
            iconView.widthAnchor.constraint(equalToConstant: 30),
            iconView.rightAnchor.constraint(equalTo: labelView.leftAnchor, constant: -20),
            
            
            labelView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 9),
            labelView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -11),
            labelView.widthAnchor.constraint(equalToConstant: 270),
            labelView.rightAnchor.constraint(equalTo: detailArrowView.leftAnchor, constant: -20),
            
            
            detailArrowView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 27),
            detailArrowView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -27),
            detailArrowView.widthAnchor.constraint(equalToConstant: 25),
            detailArrowView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -20),
        ])
    }
}
