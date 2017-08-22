class Factorial{
	var total:Int
	
	// Este es el constructor en swift
	init(){
		self.total = 1
	}
	
	func calcula(valor:Int) -> Int{
		var n = valor
		while n > 1{
			total = total * n
			n = n - 1
		}
		return total
	}
}

var f = Factorial()
print(f.calcula(valor:5))