//
//  func.swift
//  SwiftmeFirstApp
//
//  Created by Александр Владыко on 19.01.22.
//

import Foundation

func operate(_ a: Int?, _ b: Int?, _ operation: SupportedOperation?) -> Int? {
    guard let c = a else { return nil }
    guard let d = b else { return nil }
    guard let action = operation else { return nil }
    
    switch action {
    case .addition:
        return c+d
    case .subtraction:
        return c-d
    case .multiplication:
        return c*d
    case .division:
        return c/d
    case .power:
        var result = c
        for _ in 1..<d {
            result *= result
        }
        return result
    }
}
