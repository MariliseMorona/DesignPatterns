//: [Previous](@previous)

import Foundation

protocol ScaleProperties {
    var weight: Double { get }
    var height: Double { get }
}

struct Scale {
    let weight: Double
    let height: Double
    
    init(weight: Double, height: Double){
        self.weight = weight
        self.height = height
    }
}

struct ImportedScale: ScaleProperties {
    private let targets: Scale
    
    var weight: Double {
        return targets.weight * 2.200
    }
    
    var height: Double {
        return targets.height * 3.444
    }
    
    init(_ targets: Scale){
        self.targets = targets
    }
}
let balance = Scale(weight: 0.99, height: 2.99)
let importedScale = ImportedScale(balance)

importedScale.height
importedScale.weight
