//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int{
    case Apagado=0, VelocidadBaja=20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades )
    {
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad:Velocidades
    
    init( )
    {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String)
    {
        switch velocidad
        {
            case Velocidades.Apagado:
                velocidad = Velocidades.VelocidadBaja
                return (velocidad.rawValue, "Velocidad Baja")
            case Velocidades.VelocidadBaja:
                velocidad = Velocidades.VelocidadMedia
                return (velocidad.rawValue, "Velocidad Media")
            case Velocidades.VelocidadMedia:
                velocidad = Velocidades.VelocidadAlta
                return (velocidad.rawValue, "Velocidad Alta")
            case Velocidades.VelocidadAlta:
                velocidad = Velocidades.VelocidadMedia
                return (velocidad.rawValue, "Velocidad Media")
            default:
                return (velocidad.rawValue, "Error")
        }
    }
}

var auto = Auto()

for var i = 1; i<=20; i++
{
    print(auto.cambioDeVelocidad())
}
