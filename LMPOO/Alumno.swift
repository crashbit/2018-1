//: Playground - noun: a place where people can play

import UIKit

class Alumno{
    var nombre: String
    var edad: Int
    var promedio: Float{
        willSet(nuevoValor){
            print("\(self.nombre) cambio a \(nuevoValor)")
        }
        didSet{
            switch self.promedio{
            case 0..<5.9:
                print("Malo, malísimo")
            case 6.0..<7.9:
                print("Alumno suficiente")
            case 8.0..<9.9:
                print("Alumno bueno")
            case 10.0:
                print("Alumno excelente")
            default:
                print("Ni idea")
            }
            
        }
    }
    
    init?(nombre:String, edad:Int, promedio: Float) {
        self.nombre = nombre
        self.edad = edad
        self.promedio = promedio
        if self.promedio < 0.0{
            return nil
        }
        
    }
    func leer(){
        print("Leyendo")
    }
    
    func escribir() {
        print("Escribiendo")
    }
}

if let fi = Alumno(nombre:"German", edad:44, promedio: 3.0){
    print("Alumno creado")
    fi.promedio = 8.0
}else{
    print("El promedio debe ser positivo")
}


