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
    
    var titleArray : [String] = ["Jaran Goyang"," Honey Bunny","Solo Racing"]
    var descArray : [String] = ["Mengapa","Engkau","Bola"]
    var imageArray : [UIImage] = [#imageLiteral(resourceName: "img_room") , #imageLiteral(resourceName: "img_building"), #imageLiteral(resourceName: "img_coffee")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleArray[0]
        artistLabel.text = descArray[0]
        coverImage.image = imageArray[0]
    }
    
    @IBAction func shuffleTapped(_ sender: UIButton) {
        let randomId = Int.random(in: 0..<imageArray.count)
        titleLabel.text = titleArray[randomId]
        artistLabel.text = descArray[randomId]
        coverImage.image = imageArray[randomId]
    }
    @IBAction func detailSongTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toDetailView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as? DetailViewController
     
        if let text = titleLabel.text {
            destinationView?.musicTitle = text
        }
        if let text = artistLabel.text {
            destinationView?.desc = text
        }
        if let img = coverImage.image {
            destinationView?.imageDetail = img
        }
   
    }
    
}

