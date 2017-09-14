//: Playground - noun: a place where people can play

import UIKit

class Empleado{
    var salarioAnual:Double{
        willSet(nuevoSalario){
            print("Modificando el salario anual a \(nuevoSalario)")
        }
        
        didSet{
            if salarioSemanal > oldValue{
                print("Hubo incremento")
            }
            else{
                print("NO hubo incremento")
            }
        }
    }
    
    var salarioSemanal: Double{
        get{
            return self.salarioAnual/52
        }
        set(nuevoSalarioSemanal){
            self.salarioAnual = nuevoSalarioSemanal * 52
        }
    }
    init(){
        self.salarioAnual = 0.0
    }
    
//    init(salarioAnual: Double){
//        self.salarioAnual = salarioAnual
//    }
    
    init?(salarioAnual: Double){
        self.salarioAnual = salarioAnual
        if self.salarioAnual < 5000{
            return nil
        }
    }
    
    func prima(cantidad: Double){
        self.salarioAnual += cantidad
    }
}



if let vanesa = Empleado(salarioAnual: 2000.00){
    print(vanesa.salarioSemanal)
}else{
    print("No se contrato a vanesa")
}


//print(vanesa.salarioSemanal)
//vanesa.salarioSemanal=15000
//print(vanesa.salarioSemanal)
//print(vanesa.salarioAnual)
//vanesa.prima(cantidad: 20000)

