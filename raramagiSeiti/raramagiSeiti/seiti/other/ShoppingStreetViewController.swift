//
//  shoppingStreetViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/02.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class ShoppingStreetViewController: UIViewController {
    
    @IBOutlet weak var shoppingStreetImg: UIImageView!
    @IBOutlet weak var shoppingStreetTxt: UITextView!
    @IBOutlet weak var shoppingStreetLbl: UILabel!
    @IBOutlet weak var shoppingStreetStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "下北沢南口商店街"
        
        shoppingStreetTxt.text = "音楽の街、下北沢の商店街\n器楽部員は東奏東商店街で食品や日用品を買い揃えることが多いようだ"
        shoppingStreetLbl.text = "主な登場ストーリー"
        shoppingStreetStory.text = "・ホーム画面\n・イベントストーリー多数"
    }
    

}
