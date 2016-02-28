
//  ViewController.swift
//  MasFeliz
///Users/Nailim/Documents/Cursos/Swift/SwiftProgramarParaiOS/MasFeliz/MasFeliz/ViewController.swift
//  Created by Angelica Badillo Milián on 26/02/16.
//  Copyright © 2016 Nailim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajePositivo: UILabel!
    let colores = Colores()
    let frases = Frases()
    
    @IBOutlet weak var numMensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnMensajePositivo() {
        let colorAleatorio = colores.regresaColorAleatorio()
        
        mensajePositivo.text = frases.regresaFraseFeliz()
        view.tintColor = colorAleatorio
        view.backgroundColor = colorAleatorio
    }
}

