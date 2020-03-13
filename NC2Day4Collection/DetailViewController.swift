//
//  DetailViewController.swift
//  NC2Day4Collection
//
//  Created by zein rezky chandra on 11/03/20.
//  Copyright © 2020 Jazilul Athoya. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var coverImage: UIImageView!
    
    @IBOutlet weak var descLabel: UILabel!
    var musicTitle : String = ""
    var desc : String = ""
    var imageDetail : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = musicTitle
        descLabel.text = "\(musicTitle) \n \(desc)"
        if let x = imageDetail {
            coverImage.image = x
        }
    }

}
