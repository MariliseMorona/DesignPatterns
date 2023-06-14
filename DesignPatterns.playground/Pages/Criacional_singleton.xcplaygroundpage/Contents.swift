//: [Previous](@previous)

import Foundation

final class Printed {
    static let shared = Printed()
    
    private init() {
        
    }
    
    func printedFile(){
        print("printed file ... ")
    }
}

Printed.shared.printedFile()


