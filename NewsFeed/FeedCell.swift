//
//  FeedCell.swift
//  NewsFeed
//
//  Created by Muneef M on 21/05/17.
//  Copyright © 2017 Dr ashy. All rights reserved.
//

import UIKit
//import Kingfisherimport
import Kingfisher
//import Haneke

class FeedCell: UITableViewCell {

    @IBOutlet var posterImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print(" ----- cell awakeFromNib -------")
        let url = URL(string: "http://jukson.com/assets/images/RW_SQUARE-BANNER.jpg")
        print(url)
       posterImage.kf.setImage(with: url)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        print(" ----- cell setSelected -------")

    }

}
