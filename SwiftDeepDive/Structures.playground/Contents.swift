struct Town {// Town yazarken t büyük olmak zorunda
    
    let name="Burakland"
    var citizens=["Burak","Betül"]
    var resources=["Grain":100, "Ore":42,"Wool":75]
    
    
    
    func fortify()  {
        print("Defences increased!!")
    }
    
    mutating func harvestRice(){
        resources["Rice"]=100
    }
}



var myTown=Town()

print(myTown.citizens)

myTown.citizens.append("Batuhan")
myTown.harvestRice()

print(myTown.citizens.count)
myTown.fortify()
print(myTown.resources)


struct Town2 {// Town yazarken t büyük olmak zorunda
    
    let name:String
    var citizens:[String]
    var resources:[String:Int]
    
    init(name:String,citizens:[String],resources:[String:Int]) {
        self.name=name
        self.citizens=citizens
        self.resources=resources
        
    }
    
    
    
    func fortify()  {
        print("Defences increased!!")
    }
    
   
    
}

var anotherTown=Town2(name: "Nameless Island", citizens: ["Sennur"], resources: ["Coconuts":100])
var ghostTown=Town2(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed":1])
anotherTown.
anotherTown.citizens.append("Solmaz")
ghostTown.fortify()


