//
//  shrineViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/01.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class shrineViewController: UIViewController {
    
    @IBOutlet weak var shrineImg: UIImageView!
    @IBOutlet weak var shrineTxt: UITextView!
    @IBOutlet weak var shrineLbl: UILabel!
    @IBOutlet weak var shrineStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "氷川神社"
        
        shrineTxt.text = "狭山自然公園内にある神社\n東奏大華火祭ではここから花火が見える"
        shrineLbl.text = "主な登場ストーリー"
        shrineStory.text = "・イベントストーリー『東奏大華火祭』\n・ホニャららDREAM第4場『夏祭りの夜に』"
    }
   

}
