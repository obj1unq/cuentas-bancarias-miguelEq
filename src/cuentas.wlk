
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { saldo -= monto }
}

object cuentaDeJulian {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) {
	    saldo= saldo + monto*80/100
	} 

	method extraer(monto) {
	   if(self.saldo()-monto >=5){
	   	saldo= saldo-monto-5
	   }
	   else{
	   	saldo= saldo - monto
	   }
	}
}

object cuentaDelPadre{
	var precioDeCompra=14.70
	var precioDeVenta=15.10
	var saldo=0
	method actualizarPrecioDeCompra(valor){
		precioDeCompra=valor
		
	}
	
	method actualizarPrecioDeVenta(valor){
		precioDeVenta=valor
	}
	method saldo(){
		return saldo * precioDeCompra
	}
	
	method depositar(unaCantidadDePesos){
		saldo= saldo + unaCantidadDePesos/precioDeVenta
	}
	
	method extraer(unaCantidadDePesos){
		saldo=saldo - unaCantidadDePesos/precioDeCompra
	}
}