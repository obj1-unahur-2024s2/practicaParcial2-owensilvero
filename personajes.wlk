import roles.*
import localidades.*

class Personaje{
  const property fuerza
  const property inteligencia
  var rol

  method rol()= rol

  method tramitarCambioDeRol(unRol){
    rol = unRol
  }
  method potencialOfensivo()= fuerza * 10 + rol.extra()
  method esGroso()= self.esInteligente() or self.esGrosoEnSuRol()
  method esInteligente()
  method esGrosoEnSuRol()= rol.esGroso(self) 

}

class Orco inherits Personaje{
  override method potencialOfensivo()= super()*1.1
  override method esGrosoEnSuRol()= rol.esGroso() 
}

class Humano inherits Personaje{
  override method esInteligente()= inteligencia>50
}

