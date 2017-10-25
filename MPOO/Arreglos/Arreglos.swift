//: Playground - noun: a place where people can play

import UIKit

var arreglo:[String] = ["uno", "dos", "tres"]

var arregloVarios:[Any] = ["uno", "dos", 3.4, 4]

arreglo.remove(at: 2)
arreglo.count
arreglo.capacity
arreglo.append("tres")
arreglo.append("cuatro")
arreglo.append("cinco")
arreglo.append("seis")
arreglo.append("siete")
arreglo.capacity
arreglo.count

for item in arreglo{
    print(item)
}
