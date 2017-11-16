//
//  HouseCell.swift
//  HouseApp
//
//  Created by Fred Wirjo on 10/8/17.
//  Copyright © 2017 opfred. All rights reserved.
//

import UIKit

class HouseCell: UITableViewCell {
    /*
    @IBOutlet weak var name: UILabel!
    */
    
    // MARK: Properties
    
    var img : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleToFill
        return img
    }()
    
    var name : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "KohinoorBangla-Semibold", size: 18)
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    var price : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont(name: "KohinoorBangla-Light", size: 16)
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(img)
        addSubview(name)
        addSubview(price)
        
        self.backgroundColor = UIColor.clear
        
        img.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        img.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        img.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        img.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        name.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 8).isActive = true
        name.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        name.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        name.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        price.topAnchor.constraint(equalTo: name.bottomAnchor).isActive = true
        price.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        price.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        price.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
