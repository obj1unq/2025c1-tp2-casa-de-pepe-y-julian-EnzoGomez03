import cosas.* 

object casaDePepeYJulian {
    const property cosas = []

    method comprar(cosa){
        cosas.add(cosa)
        //self.extraer(cosa.precio())
    }

    method cantCosasCompradas(){
        return cosas.size()
    }

    method tieneAlgun(categoria){
        return cosas.any({cosa => cosa.categoria() == categoria})
    }

    method vieneDeComprar(categoria){
        return cosas.last().categoria() == categoria  && not(cosas.isEmpty())
    }

    method esDerrochona(){
        return self.totalPrecioCosas() >= 9000
    }


    method totalPrecioCosas(){
        return cosas.sum({cosa => cosa.precio()})
    }

    method malaEpoca(){
        return cosas.all({cosa => cosa.categoria().esComestible()})
    }

    method queFaltaComprar(lista){
        return lista.filter({cosa =>  not cosas.contains(cosa)})
    }

    method faltaComida(){
        return self.cantidadDeComida() < 2    
    }

    method cantidadDeComida(){
        return cosas.count({cosa => cosa.categoria().esComestible()})
    }

    method categoriasCompradas(){
       return  cosas.map({cosa => cosa.categoria()})
    }
    
    method extraer(cuenta,cosa){
        cuenta.extraer(cosa.precio())
    }
    
  
}
