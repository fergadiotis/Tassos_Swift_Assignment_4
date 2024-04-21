//Define the ElectricitySystem protocol
protocol ElectricitySystem{
    var batteryLevel: Double { get }
    func chargeBattery()
    func checkBatteryLevel()
}

//Define the ClimateControl protocol
protocol ClimateControl{
    var temperature: Double { get }
    func setTemperature(_temperature: Double)
    func adjustFanSpeed()
}

//Implement a class named Camper that conforms to any 2 of the 5 protocols.
class Camper: ElectricitySystem, ClimateControl{
    var batteryLevel: Double = 89.0
    var temperature: Double = 21.0
    
    func chargeBattery() {
        print("Battery is enough to run the climate control ")
    }
    
    func checkBatteryLevel() {
        print("Battery level: \(batteryLevel)%")
    }
    
    func setTemperature(_temperature: Double) {
        print("Temperature set to \(temperature)°C")
    }
    
    func adjustFanSpeed() {
        print("Adjusting fan speed for climate control")
    }
}

//write test code to demonstrate the functionality of the Camper class
let theCamper = Camper()
theCamper.chargeBattery()
theCamper.checkBatteryLevel()
theCamper.setTemperature(_temperature: 21.0)
theCamper.adjustFanSpeed()
