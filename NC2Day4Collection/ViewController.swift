//
//  ViewController.swift
//  NC2Day4Collection
//
//  Created by Jazilul Athoya on 10/03/20.
//  Copyright © 2020 Jazilul Athoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    var titleArray : [String] = []
    var descArray : [String] = []
    var imageArray : [UIImage] = [#imageLiteral(resourceName: "img_room") , #imageLiteral(resourceName: "img_building"), #imageLiteral(resourceName: "img_room")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func shuffleTapped(_ sender: UIButton) {
    }
    @IBAction func detailSongTapped(_ sender: UIButton) {
    }
    
}

