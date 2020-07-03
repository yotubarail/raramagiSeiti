//
//  museumViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/01.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class museumViewController: UIViewController {
    
    @IBOutlet weak var museumImg: UIImageView!
    @IBOutlet weak var museumTxt: UITextView!
    @IBOutlet weak var museumLbl: UILabel!
    @IBOutlet weak var museumStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "東大和市立郷土博物館"
        
        museumTxt.text = "狭山丘陵についての展示とプラネタリウムがある\n作中では器楽部の定期演奏会会場の祝祭劇場がある"
        museumLbl.text = "主な登場ストーリー"
        museumStory.text = "・1幕『いばら姫』\n・綾瀬凜誕生日限定ストーリー"
    }
   

}
