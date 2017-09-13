import UIKit

class Empleado{
    var salarioAnual:Double
    var salarioSemanal: Double{
        get{
            return self.salarioAnual/52
        }
        set(nuevoSalarioSemanal){
            self.salarioAnual = nuevoSalarioSemanal * 52
        }
    }
    
    init(salarioAnual: Double){
        self.salarioAnual = salarioAnual
    }
}

var vanesa = Empleado(salarioAnual: 100000.00)
print(vanesa.salarioSemanal)
vanesa.salarioSemanal=15000
print(vanesa.salarioSemanal)
print(vanesa.salarioAnual)

