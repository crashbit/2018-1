//: Solucion no. 2, sin usan herencia, relacion entre 3 clases

import UIKit

class Producto{
    var nombre:String
    var precio:Double
    enum tipoProducto{
        case Maciza, CocaCola, FlanNapolitano
    }
    
    var producto: tipoProducto
    
    init(nombre:String, precio:Double, producto:tipoProducto){
        self.nombre = nombre
        self.precio = precio
        self.producto = producto
    }
}

var maciza = Producto(nombre: "Maciza", precio: 15.0, producto: .Maciza)
var coca = Producto(nombre:"Coquita", precio:20.0, producto:.CocaCola)

class Taqueria{
    func despachar(cliente:Cliente,cantidad:Int, producto: Producto){
        let tupla = (producto, cantidad)
        cliente.productos.append(tupla)
    }
}

class Cliente{
    var productos = [(producto: Producto, cantidad:Int)]()
    func elistaProductos(){
        for producto in productos{
        print("\(producto.producto.nombre) - \(producto.cantidad) - \(producto.producto.precio)")
        }
    }
}

var cochinitos = Taqueria()
var german = Cliente()
cochinitos.despachar(cliente: german, cantidad: 2, producto: maciza)
cochinitos.despachar(cliente: german, cantidad: 1, producto: coca)


german.elistaProductos()
