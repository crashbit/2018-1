//: Playground - noun: a place where people can play

import UIKit

class Alumno{
    var edad:Int = 18
    func quienSoy(){
        print("Soy un alumno")
    }
}

class Ingenieria: Alumno, CustomStringConvertible{
    public var description: String{
            return "Soy un Alumno y tengo \(self.edad)"
        }

    override func quienSoy() {
        print("Soy ingeniero(a)")
    }
}

class Contaduria: Alumno{
    override func quienSoy() {
        print("Soy contador(a)")
    }
}

func muestraEdad(alumno:Alumno){
    print(alumno.edad)
    alumno.quienSoy()
}

let laura = Alumno()
let vane = Ingenieria()
let uriel = Contaduria()

muestraEdad(alumno: laura)
muestraEdad(alumno: vane)
muestraEdad(alumno: uriel)
print(vane)
