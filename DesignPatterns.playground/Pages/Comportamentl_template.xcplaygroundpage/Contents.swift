import UIKit

protocol Garden {
    func prepareSoil()
    func plantSeed()
    func waterPlant()
    func prepareGarden()
}

extension Garden {
    func prepareGarden(){
        prepareSoil()
        plantSeed()
        waterPlant()
        
    }
}

final class RoseGarden: Garden {
    func prepare(){
        prepareGarden()
    }
    
    func prepareSoil(){
        print("prepare soil for rose garden")
        print("add nutrition")
    }
    
    func plantSeed(){
        print("plant seeds for rose garden")
    }
    
    func waterPlant(){
        print("water the rose garden")
    }
}

let garden = RoseGarden()
garden.prepare()
