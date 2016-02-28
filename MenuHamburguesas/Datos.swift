//
//  Datos.swift
//  MenuHamburguesas
//
//  Created by Angelica Badillo Milián on 27/02/16.
//  Copyright © 2016 Nailim. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises = [
        "México",
        "Canada",
        "Chile",
        "Argentina",
        
        "Alemania",
        "Italia",
        "Inglaterra",
        "Suiza",
        
        "Egipto",
        "Etiopia",
        "Marruecos",
        "Libia",
        
        "Turquia",
        "Rusia",
        "Japon",
        "India",
        
        "Australia",
        "Nueva Zelanda",
        "Fiji",
        "Indonesia"
    ]
    
    func obtenPais(pos:Int )->String
    {
        return paises[pos]
    }
}


class ColeccionDeHamburguesas {
    let hamburguesas = [
        "La Grandiosa",
        "Montreal Burguer",
        "Lúcuma",
        "Sorrentina",
        
        "Lüneburger",
        "Little Italy",
        "Buxton Blue",
        "Raclette",
        
        "Faraon",
        "Niter Kebbeh",
        "Marraquech",
        "Hummus",
        
        "Yayla",
        "Pavlova",
        "Sashimi",
        "Daal ki kachauri",
        
        "Cangu Burguer",
        "Lamington",
        "Viti Levu",
        "Ayam Taliwang"
    ]
    
    func obtenHamburguesa(pos:Int )->String
    {
        return hamburguesas[pos]
    }
}

struct Colores{
    let colores = [
        UIColor(red:210/255, green: 128/255,  blue:0/255,   alpha:1),
        UIColor(red:255/255, green: 255/255,  blue:0/255,   alpha:1),
        UIColor(red:153/255, green: 255/255,  blue:51/255,  alpha:1),
        UIColor(red:51/255,  green: 153/255,  blue:255/255, alpha:1),
        UIColor(red:51/255,  green: 51/255,   blue:255/255, alpha:1),
        UIColor(red:255/255, green: 51/255,   blue:255/255, alpha:1),
        UIColor(red:255/255, green: 51/255,   blue:153/255, alpha:1),
        UIColor(red:255/255, green: 165/255,  blue:0/255,   alpha:1)
    ]
    
    func regresaColorAleatorio()->UIColor{
        let posicion = Int(arc4random())%colores.count
        
        return colores[posicion]
    }
    
}

