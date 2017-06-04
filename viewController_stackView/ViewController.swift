//
//  ViewController.swift
//  viewController_stackView
//
//  Created by Luthfi Fathur Rahman on 6/3/17.
//  Copyright © 2017 Luthfi Fathur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view_Related: UIView!
    @IBOutlet weak var view_Pemain: UIView!
    @IBOutlet weak var label_Judul: UILabel!
    @IBOutlet weak var stackViewUtama: UIStackView!
    @IBOutlet weak var stackViewDataFilm: UIStackView!
    @IBOutlet weak var label_sinopsis: UILabel!
    @IBOutlet weak var posterUtama: UIImageView!
    @IBOutlet weak var textView_sinopsis: UITextView!
    @IBOutlet weak var posterRelated1: UIImageView!
    @IBOutlet weak var posterRelated2: UIImageView!
    @IBOutlet weak var posterRelated3: UIImageView!
    @IBOutlet weak var stackView_Related: UIStackView!
    @IBOutlet weak var fotoPemain1: UIImageView!
    @IBOutlet weak var fotoPemain2: UIImageView!
    @IBOutlet weak var fotoPemain3: UIImageView!
    @IBOutlet weak var fotoPemain4: UIImageView!
    @IBOutlet weak var stackView_Pemain: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.gray
        label_sinopsis.textColor = UIColor.white
        textView_sinopsis.backgroundColor = UIColor.white
        textView_sinopsis.tintColor = UIColor.black
        
        view_Related.isHidden = true
        
        view_Pemain.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func relatedMovie(_ sender: UIButton) {
        if (sender.titleLabel?.text)! == "Tampilkan Film Terkait"{
            sender.setTitle("Sembunyikan Film Terkait", for: .normal)
            UIView.animate(withDuration: 1, animations: {
                self.view_Related.isHidden = false
            })
        } else {
            sender.setTitle("Tampilkan Film Terkait", for: .normal)
            UIView.animate(withDuration: 1, animations: {
                self.view_Related.isHidden = true
            })
        }
    }
    
    @IBAction func actorActress(_ sender: UIButton) {
        if (sender.titleLabel?.text)! == "Tampilkan Pemain"{
            sender.setTitle("Sembunyikan Pemain", for: .normal)
            UIView.animate(withDuration: 1, animations: {
                self.view_Pemain.isHidden = false
            })
        } else {
            sender.setTitle("Tampilkan Pemain", for: .normal)
            UIView.animate(withDuration: 1, animations: {
                self.view_Pemain.isHidden = true
            })
        }
    }

}
