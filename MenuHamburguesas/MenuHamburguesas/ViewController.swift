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
    
    let colores = Colores()
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mostrarDatos() {
        let posicion = Int(arc4random())%paises.paises.count
        let color = colores.regresaColorAleatorio()
        
        paisLabel.text = paises.obtenPais(posicion)
        hamburguesaLabel.text = hamburguesas.obtenHamburguesa(posicion)
        
        view.backgroundColor = color
        view.tintColor = color
        
    }
}

