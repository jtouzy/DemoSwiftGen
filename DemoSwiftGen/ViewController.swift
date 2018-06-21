//
//  ViewController.swift
//  DemoSwiftGen
//
//  Created by TOUZY Jérémy (i-BP) on 18/05/2018.
//  Copyright © 2018 jtouzy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = DMAssets.headshot.image
        label.text = DMStrings.myTitle
        label.font = DMFonts.CourierNew.regular.font(size: 20)
    }
    
    @IBAction func handleButtonTap(_ sender: UIButton) {
        perform(segue: DMStoryboardSegues.Main.firstToSecondSegue)
    }
    
    fileprivate func someUsageExamples() {
        // - Première scène du storyboard
        let _ = DMStoryboardScenes.Main.initialScene
        
        // - Initialisation d'une scène dans un storyboard
        let _ = DMStoryboardScenes.Main.navCtrl.instantiate()
        
        // - Récupérer l'instance de l'UIStoryboard
        let _ = DMStoryboardScenes.Main.storyboard
        
        // - Récupérer le nom du storyboard (constante auto)
        let _ = DMStoryboardScenes.Main.storyboardName
    }
}
