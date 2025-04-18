import casa.*

object cuentaCorriente {
  var property saldo = 0

  method depositar(dinero){
    saldo += dinero
  }


  method extraer(dinero){
    if(dinero <= saldo){
    saldo -= dinero
    }else{
    self.error("No alcanza el saldo") }  
}

}

object cuentaConGastos {
  var property saldo = 0
  var costoOperacion = 0

  method costoOperacion(costo){
    costoOperacion = costo
  }

  method depositar(dinero){
    if(dinero <= 1000){
    saldo += dinero - costoOperacion}
    else {
      self.error("Solo se puede depositar de a 1000 o menos.")
    }
  }

  method extraer(dinero){
    saldo -= dinero
  }

}