//
//  ViewController.swift
//  MenuHamburguesas
//
//  Created by Angelica Badillo Milián on 27/02/16.
//  Copyright © 2016 Nailim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paisLabel: UILabel!

    @IBOutlet weak var hamburguesaLabel: UILabel!
    
    @IBOutlet weak var costoLabel: UILabel!
    
    let colores = Colores()
    let hamburguesas = Hamburguesas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mostrarDatos() {
        let (pais, hamb, cost) = hamburguesas.regresaHamburguesas()
        let color = colores.regresaColorAleatorio()
        
        paisLabel.text = pais
        hamburguesaLabel.text = hamb
        costoLabel.text = cost
        
        view.backgroundColor = color
        view.tintColor = color
        
    }
}

