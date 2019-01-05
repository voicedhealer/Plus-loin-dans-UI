//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by bernardot vivien on 05/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFrameEtBounds: UIView!
    
    
    
    

    override func viewDidLoad() { //appelé une chose qu'une SEUL fois
        super.viewDidLoad()
        print("View did load appelé")
    }
    
    override func viewWillAppear(_ animated: Bool) { // une action lorsque la vue VA apparaître
        super.viewWillAppear(animated)
        print("View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {// une action a chaque fois que la vue EST apparu
        super.viewWillAppear(animated)
        print("View Did Appear")
        print("Frame -> : \(vueFrameEtBounds.frame)")
        print("Bounds -> : \(vueFrameEtBounds.bounds)")
        UIView.animate(withDuration: 2, animations: {self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 12)}) { (success) in
            print("Frame -> : \(self.vueFrameEtBounds.frame)")
            print("Bounds -> : \(self.vueFrameEtBounds.bounds)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {// une action à chaque fois que la vue VIENS de disparaitre
        super.viewWillDisappear(animated)
        print("View will disappear")
    }
  
    override func viewDidDisappear(_ animated: Bool) {// et une action à chaque fois que la vue VA disparaitre
        super.viewDidDisappear(animated)
        print("View did disappear")
    }
    
    override func didReceiveMemoryWarning() {// lorque quil y a une appli avec trop de donnée evite la surcharge, cette ici quil faut mettre en place des actions poue évité cela.
        super.didReceiveMemoryWarning()
    }

}
