import personajes.*

class Localidad{
    var ejercito

    method potencialDefensivo()= ejercito.potencialTotal()
    method serOcupada(unEjercito){
        ejercito = unEjercito
    }
}

class Aldea inherits Localidad{
    const property cantMaximaHabitantes
    override method serOcupada(unEjercito){
        if(unEjercito.size() > cantMaximaHabitantes){

        }
    }

}

class Ciudad inherits Localidad{

}

class Ejercito{
    const property personajes = []

    method potencialTotal(){
        return personajes.sum{unPersonaje=>unPersonaje.potencialOfensivo()}
    }
    method invadir(unaLocalidad){
    if (self.puedeTomarLocalidad(unaLocalidad)){
        unaLocalidad.serOcupada(self)
        }
    }
    method puedeTomarLocalidad(unaLocalidad){
        return self.potencialTotal() > unaLocalidad.potencialDefensivo()
    }

    method nuevoEjercitoFuerte(unaCantidad){
        const nuevoEjercito = new Ejercito(personajes = personajes.sortBy({p1, p2 = p1.potencialOfensivo() > p2.potencialOfensivo()}).take(unaCantidad))
        return nuevoEjercito
    }
}

