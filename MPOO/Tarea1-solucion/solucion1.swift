//: Solucion a la tarea usando herencia entre clases

import UIKit

class Producto{
    var nombre:String
    var precio:Double
    init(nombre:String, precio:Double){
        self.nombre = nombre
        self.precio = precio
    }
}

class Taco:Producto{
    enum TipoTaco{
        case Maciza, Suadero
    }
    var taco:TipoTaco
    
    init(taquito:TipoTaco, precio:Double){
        self.taco = taquito
        let nombreTaco = String(describing: self.taco)
        super.init(nombre:nombreTaco, precio:precio)
    }
}

class Taqueria{
    func despachar(cliente: Cliente, cantidad:Int, producto:Producto){
        cliente.agregar(producto: producto, cantidad:cantidad)
    }
    
    func cobrar(cliente: Cliente){
        
    }
}

class Cliente{
    var productos:[(producto:Producto,cantidad:Int)] = []
    func agregar(producto:Producto, cantidad:Int){
        let tupla = (producto, cantidad)
        productos.append(tupla)
    }
    
    func comio(){
        for producto in self.productos{
            print(producto.producto.nombre, producto.cantidad)
        }
    }
}

let maciza = Taco(taquito: .Maciza, precio: 15.0)
let suadero = Taco(taquito: .Suadero, precio: 20.0)

let german = Cliente()
let taqueria = Taqueria()

taqueria.despachar(cliente: german, cantidad: 2, producto: maciza)

taqueria.despachar(cliente: german, cantidad: 2, producto: suadero)

german.comio()



