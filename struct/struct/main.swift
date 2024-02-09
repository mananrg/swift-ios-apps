class Bird{
    var isFemale = true
    func layEgg(){
        if isFemale{
            print("The bird makes a new bird in the shell.")
        }
    }
    func fly(){
        print("The birds flag its wings and lifts off into the sky.")
    }
}

class Eagle: Bird{
    func soar(){
        print("the eagle glides in the air using air currents.")
    }
}
class Penguin: Bird{
    func swim(){
        print("The penguin paddles through the water.")
    }
}

struct
let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()
let penguin = Penguin()
penguin.fly()
