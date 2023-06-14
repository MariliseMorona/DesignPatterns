//: [Previous](@previous)

import Foundation

protocol PropertyObserver: AnyObject {
    func didChange(newPropertyValue: Any?)
}

final class TestClients {
    weak var observer: PropertyObserver!
    
    var numberClients: Int = 0 {
        didSet {
            observer.didChange(newPropertyValue: numberClients)
        }
    }
}

final class Observer: PropertyObserver {
    func didChange(newPropertyValue: Any?) {
        if let value = newPropertyValue as? Int {
            print("New property value is \(value)")
        }
    }
}

var observeInstance = Observer()
var testClient = TestClients()
testClient.observer = observeInstance
testClient.numberClients += 1
testClient.numberClients += 1
