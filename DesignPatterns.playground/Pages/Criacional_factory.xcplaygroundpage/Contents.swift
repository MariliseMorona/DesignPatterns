//: [Previous](@previous)

import Foundation

protocol CurrencyDescribing {
    var symbol: String { get }
    var code: String { get }
}

final class Euro: CurrencyDescribing {
    var symbol: String {
        return "E"
    }
    
    var code: String {
        return "EUR"
    }
}

final class UnitedStatesDolar: CurrencyDescribing {
    var symbol: String {
        return "$"
    }
    
    var code: String {
        return "USD"
    }
}

final class Real: CurrencyDescribing {
    var symbol: String {
        return "R$"
    }
    
    var code: String {
        return "BRL"
    }
}

enum Country {
    case unitedStates
    case spain
    case uk
    case greece
    case brazil
}
enum CurrencyFactory {
    static func currency(for country: Country) -> CurrencyDescribing? {
        switch country {
        case .spain, .greece:
            return Euro()
        case .unitedStates:
            return UnitedStatesDolar()
        case .brazil:
            return Real()
        default:
            return nil
        }
    }
}

CurrencyFactory.currency(for: .greece)?.code
CurrencyFactory.currency(for: .spain)?.code
CurrencyFactory.currency(for: .brazil)?.code
