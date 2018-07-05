//
//  PlayerTableViewCell.swift
//  Ratings
//
//  Created by Sphelele Zondo on 2018/07/05.
//  Copyright © 2018 SpheleleZondo. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    //MARK: - IBOutlets
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    //MARK: - Properties
    var player: Player?{
        didSet{
            guard let player = player else {return}
            
            gameLabel.text=player.game
            nameLabel.text=player.name
            ratingImageView.image=image(forRating: player.rating)
        }
    }
    
    func image(forRating rating:Int) -> UIImage? {
        let imageName="\(rating)Stars"
        return UIImage(named: imageName)
    }
}
