//
//  shoppingMallViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/02.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class shoppingMallViewController: UIViewController {
    
    @IBOutlet weak var shoppingMallImg: UIImageView!
    @IBOutlet weak var shoppingMallTxt: UITextView!
    @IBOutlet weak var shoppingMallLbl: UILabel!
    @IBOutlet weak var shoppingMallStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "三井アウトレットパーク入間"
        
        shoppingMallTxt.text = "複合商業施設\n器楽部員は雑貨や洋服を買いに来る"
        shoppingMallLbl.text  = "主な登場ストーリー"
        shoppingMallStory.text = "・イベントストーリー『東奏マーチングパレード』\n・卯月幸誕生日限定ストーリー"
    }
    

}
