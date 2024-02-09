protocol AdvanceLifeSupport{
    func performCPR()
}

class EmergencyCallHandler{
    var delegate: AdvanceLifeSupport?
    func assessSituation(){
        print("Can you tell me what happened")
    }
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic: AdvanceLifeSupport{
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR() {
        print("The paramedic does chest compression, 30 per second.")
    }
}

class Doctor: AdvanceLifeSupport{
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR() {
        print("The paramedic does chest compression, 30 per second.")
    }
    func useStethoscope(){
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor{
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees.")
    }
    func useDrills(){
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
//let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
