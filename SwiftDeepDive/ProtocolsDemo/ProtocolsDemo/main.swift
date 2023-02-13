// javadaki interfacelerle aynı mantık sadece interface yerine protocol yazıyoruz başka esprisi yok
// struct ve classlar protocolleri benimseyebilir birden fazla protocol de benimseyebilir

/*
 struct MyStructure : FirstProtocol,AnotherProtocol {
            struct definition goes here
 }
 
 class MyClass : SuperClass,FirstProtocol,AnotherProtocol {
            class definition goes here
 }
 */



protocol CanFly {
    func fly()
}


class Bird {
    
    var isFemale = true
    
    func layEgg()  {
        print("The bird makes a new bird in a shell.")
    }
}

class Eagle: Bird,CanFly {
    func fly() {
        print("The eagle flpas its wings and lifts off into the sky")
    }
    
    func soar()  {
        print("The eagle glides in the air using air currents. ")
    }
    
    
}

class Penguin: Bird {
    func swim()  {
        print("The penguin paddles through the water ")
    }
}

struct FlyingMuseum  {
    func flyingDemo(flyingObject : CanFly)  {
        flyingObject.fly()
    }
}

struct Airplane : CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
    
    
}


let myEagle = Eagle()

let myPenguin = Penguin()

let myPlane = Airplane()



let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
