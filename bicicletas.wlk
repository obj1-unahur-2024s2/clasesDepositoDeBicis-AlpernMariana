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

    method cantidadAccesoriosLivianos() = accesorios.count({a =>a.peso() < 1})
    method esBiciCompaniera(otraBici) =
        otraBici.marca() == self.marca()
        && (otraBici.largo() - self.largo().abs()) <= 10 
        && otraBici!= self
        
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
  method esLuminoso() = tieneOjoDeGato

}

class Deposito{
  const bicis =[]
  method bicisRapidas() = bicis.filter{b=>b.velocidad()>25}
  method marcaBicis() = bicis.map({b=> b.marca()}).asSet()
  method esNocturno() = bicis.all({b=>b.esLuminoso()})
  method tieneBiciParaCargar(kg) = bicis.any({b=>b.carga() > kg})
  method laMarcaMasRapida() = self.biciMasRapida()
  method biciMasRapida() = bicis.max({b=>b.velocidad()})
  method bicisLargas() = bicis.filter({b=>b.largo() >170})
  method cargaTotalBicisLargas() =
    if (!self.bicisLargas().isEmpty())
    {self.bicisLargas().sum({b=>b.carga()})}
    else{0}
 method bicisSinAccesorios() = bicis.count({b => b.accesorios().isEmpty()})
 
 method bicisCompanierasDe(unaBici) =
   bicis.filter({b => b.esBiciCompaniera(unaBici)})
}



