//
//  Datos.swift
//  MenuHamburguesas
//
//  Created by Angelica Badillo Milián on 27/02/16.
//  Copyright © 2016 Nailim. All rights reserved.
//

import Foundation
import UIKit

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

struct Hamburguesas{
    let paises = [
        "México",
        "Alemania",
        "Italia",
        "Egipto",
        "Australia",
        "Rusia",
        "Inglaterra",
        "Etiopia"
    ]
    
    let hamburguesas = [
        "La Grandiosa",
        "Lüneburger",
        "Little Italy",
        "Faraon",
        "KanguBurguer",
        "Pavlova",
        "Buxton Blue",
        "Niter Kebbeh"
    ]
    
    let costos = [
        "45.00",
        "52.00",
        "61.00",
        "49.00",
        "40.00",
        "73.00",
        "55.00",
        "100.00"
    ]
    
    func regresaHamburguesas()->(String, String, String){
        let posicion = Int(arc4random())%paises.count
        
        return (paises[posicion],hamburguesas[posicion],costos[posicion])
    }
    
}
