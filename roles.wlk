import personajes.*
object rolGuerrero{
  method extra()=100
  method esGroso(unPersonaje)= unPersonaje.fuerza()>50
}

class RolCazador{
  var property mascota
  method extra()= mascota.potencialOfensivo()
  method esGroso(unPersonaje)= mascota.esLongeva()
}

object rolBrujo{
  method extra()=0
  method esGroso(unPersonaje)= true
}

class Mascota{
  const property duenio
  var edad
  const property tieneGarras
  const property fuerza

  method edad()= edad
  method cumplirAnios(){
    edad = edad + 1
  }
  method potencialOfensivo(){
    if (self.tieneGarras()) fuerza*2 fuerza
  }
  method esLongeva()= edad>10
}