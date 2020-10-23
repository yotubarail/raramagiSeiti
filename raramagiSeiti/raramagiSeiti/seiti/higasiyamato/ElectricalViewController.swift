//
//  electricalViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/01.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class ElectricalViewController: UIViewController {
    
    @IBOutlet weak var electricalImg: UIImageView!
    @IBOutlet weak var electricalTxt: UITextView!
    @IBOutlet weak var electricalLbl: UILabel!
    @IBOutlet weak var electricalStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "旧日立航空機立川工場変電所"
        
        electricalTxt.text = "1993年まで使用された変電所\n器楽部全員で集まり、この前で映画撮影を行った"
        electricalLbl.text = "主な登場ストーリー"
        electricalStory.text = "・イベントストーリー『シネマパラダイス』"
    }
    


}
