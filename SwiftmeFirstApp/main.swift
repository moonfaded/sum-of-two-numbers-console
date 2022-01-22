//
//  main.swift
//  SwiftmeFirstApp
//
//  Created by Александр Владыко on 19.01.22.
//

var a: Int?
var b: Int?
var operation: SupportedOperation?

enum SupportedOperation: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
    case power = "^"
}

repeat {
    print("Please, type first correct value:")
    a = Int(readLine() ?? "")
} while a == nil

repeat {
    print("Please, type second correct value:")
    b = Int(readLine() ?? "")
} while b == nil

repeat {
    print("Please, type supported operation:")
    operation = SupportedOperation.init(rawValue: String(readLine() ?? ""))
} while operation == nil


let summmed = operate(a, b, operation)
print("Result of operation: \(a!) \(operation!.rawValue) \(b!) = \(summmed!)")
