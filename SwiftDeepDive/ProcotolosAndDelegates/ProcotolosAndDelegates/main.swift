protocol AdvancedLifeSupport {
    func performCPR()    // tamamlanmamış fonksiyon kullanmak zorundasın
                        // bu protocol ü benimseyen kişi kendisi dolduracak buradaki fonksiyon(lar)u
}

class EmergencyCallHandler {
    var delegate : AdvancedLifeSupport?
    
    func assessSituation()  {
        print("Can you tell me what happened ?")
    }
    
    func medicalEmergency()  {
        delegate?.performCPR() // cihaz kimdeyse kalp masajı yapacak
        
    }
    
}


struct Paramedic : AdvancedLifeSupport {
    
    init(handler:EmergencyCallHandler){ // cihazı ben aldım bende demek için delege benim diyor yani
        handler.delegate=self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions ,30 per second.")
    }
    
    
    
}

class Doctor: AdvancedLifeSupport {
    
    init(handler :EmergencyCallHandler) {
        handler.delegate=self
    }
    func performCPR() {
        print("The doctor does chest compressions ,30 per second.")
    }
    func useStethescope()  {
        print("Listening for heart sounds")
    }
    
    
}

class Surgeon: Doctor {
    
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill()  {
        print("Whirr...")
    }
}




let emilio = EmergencyCallHandler()

//let pete = Paramedic(handler: emilio)
//let angela = Surgeon(handler : emilio)


emilio.assessSituation()
emilio.medicalEmergency()


