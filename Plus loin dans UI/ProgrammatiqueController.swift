//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by bernardot vivien on 05/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    @IBOutlet weak var scrool: UIScrollView!
    
    var monPremierUIView: UIView?
    var monPremierLabel: UILabel?
    var monPremierBoutton: UIButton?
    var maPremiereIV: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 22 / 255, green: 200 / 255, blue: 76 / 255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else { return }
        scrool.addSubview(monPremierUIView!)
       
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .center
        scrool.addSubview(monPremierLabel!)
        
        let rectDeMonBoutton = CGRect(x: view.frame.width / 2 - 75, y: monPremierLabel!.frame.maxY + 220, width: 150, height: 40)
        monPremierBoutton = UIButton(frame: rectDeMonBoutton)
        monPremierBoutton?.setTitle("Appuyer", for: UIControl.State.normal)
        monPremierBoutton?.tintColor = UIColor.red
        monPremierBoutton?.backgroundColor = UIColor.black
        monPremierBoutton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBoutton?.layer.borderColor = UIColor.white.cgColor
        monPremierBoutton?.layer.borderWidth = 2
        scrool.addSubview(monPremierBoutton!)
       
        
        monPremierBoutton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let rectIV = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        maPremiereIV = UIImageView(frame: rectIV)
        maPremiereIV?.image = #imageLiteral(resourceName: "codabee")
        maPremiereIV?.contentMode = .scaleAspectFill
        maPremiereIV?.clipsToBounds = true
        maPremiereIV?.layer.cornerRadius = maPremiereIV!.frame.width / 2
        scrool.addSubview(maPremiereIV!)
        //view.sendSubviewToBack(maPremiereIV!)
        
        scrool.bringSubviewToFront(monPremierBoutton!)
        
        maPremiereIV?.isUserInteractionEnabled = true
        maPremiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))
        
        var couleurs :[UIColor] = [.red, .blue, .white, .black]
        var maximum: CGFloat = (maPremiereIV?.frame.maxY)!
        
        for couleur in couleurs {
            let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: 100, height: 100))
            vue.backgroundColor = couleur
            scrool.addSubview(vue)
            maximum = vue.frame.maxY
        }
        
        scrool.contentSize = CGSize(width: view.frame.width, height: maximum + 100)
        
    }
    
    @objc func imageAppuye() {
        print("image touché")
    }
    
    @objc func boutonAppuye() {
        print("Tu as bien appuyé")
    }
    
}
