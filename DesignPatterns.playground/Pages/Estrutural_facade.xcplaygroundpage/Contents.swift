//: [Previous](@previous)

import Foundation

final class Defaults {
    
    private let defaults: UserDefaults
    
    init(defaults: UserDefaults = .standard){
        self.defaults = defaults
    }
    
    subscript(key: String) -> String? {
        get {
            return defaults.string(forKey: key)
        }
        
        set {
            defaults.set(newValue, forKey: key)
        }
    }
}

let storage = Defaults()
storage["teste"] = "introducao a boas praticas"
storage["teste"] = "boas praticas"
