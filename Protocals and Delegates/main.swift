
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func asseccSituation() {
        print("Can you tell me what happened")
    }
    func medicalEmergency() {
        delegate?.performCPR()
    }
}
struct Paramedic: AdvancedLifeSupport {
    
    init(hander: EmergencyCallHandler) {
        hander.delegate = self
    }
    func performCPR() {
        print("The paramedic does chest compression")
    }
    
    
}

class Doctor: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The doctor does chest compression")
    }
    func useStethscope() {
        print("Listening to heart beat")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sing staying alive by the BeeGess")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}
let hechio = EmergencyCallHandler()
let queen = Surgeon(handler: hechio)
hechio.asseccSituation()
hechio.medicalEmergency()
