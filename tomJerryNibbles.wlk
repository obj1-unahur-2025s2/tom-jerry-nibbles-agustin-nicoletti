object tom {
    var energia = 50

    method comer(unRaton) {
      energia = (energia +12 + unRaton.peso()).min(100)
      unRaton.serComido()
    }
    method correr(distancia) {
      energia = (energia - distancia / 2).max(0)
    }

    method velocidadMaxima() {
      return 5 + energia / 10
    }

    method puedeCazar(unaDistancia) {
      return  unaDistancia / 2 <= energia
    }

    method cazar(unRaton,unaDistancia) {
      if(self.puedeCazar(unaDistancia)){
        self.correr(unaDistancia)
        self.comer(unRaton)
      }
        
    }
}
object jerry {
    var edad = 2
   method peso() {
        return edad *2
      
    }
    method cumplirAños() {
        edad= edad +1      
    }
    method serComido() {
   
  }  
}


object nibbles {
  method peso() {
    return 35
  }
   method serComido() {
  
  }
}

object perez {
  var estaSeco = true
  method peso() {
    if(estaSeco){
      return 20
    }
    else{
      return 40
    }
  }
  method serComido() {
    estaSeco = false
  }
}