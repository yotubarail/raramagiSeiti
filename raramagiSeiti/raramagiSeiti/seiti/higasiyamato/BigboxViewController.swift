//
//  bigboxViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/06/30.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class BigboxViewController: UIViewController {

    @IBOutlet weak var bigboxImg: UIImageView!
    @IBOutlet weak var bigboxTxt: UITextView!
    @IBOutlet weak var bigboxLbl: UILabel!
    @IBOutlet weak var bigboxStory: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "BIGBOX東大和"
        
        bigboxTxt.text = "ゲームセンターやボウリング場などの複合施設\n器楽部みんなの遊び場"
        bigboxLbl.text = "主な登場ストーリー"
        bigboxStory.text = "・キズナストーリー\n・イベントストーリー『雨に唄えば』"
    }
    

   
}
