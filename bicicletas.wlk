class Bicicleta{
    var property rodado 
    const property largo 
    const property marca  
    const property accesorios =[]

    method altura() = rodado * 2.5 + 15
    method velocidadDeCrucero() = 
      if(largo>120){rodado+6}
      else{rodado+2}
    method carga() = accesorios.sum({a => a.carga()})
    method peso()= rodado/2 + accesorios.sum({a=> a.peso()})
    method esLuminoso() = accesorios.any({a => a.esLuminoso()})

    method cantidadAccesoriosLivianos() = accesorios.count({a =a.peso() < 1})
}

class Farolito {
  method peso() = 0.5
  method carga() =0
  method esLuminoso() = true
}

class Canasto {
  const volumen 
  method peso() = volumen/10
  method carga() = volumen*2
  method esLuminoso() = false 
}

class MorralDeBici {
  const property  largo
  var property tieneOjoDeGato 
  method peso() = 1.2
  method carga() = largo/3
  method esLuminoso() = 

}