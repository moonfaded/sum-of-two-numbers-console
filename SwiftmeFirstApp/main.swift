//
//  main.swift
//  SwiftmeFirstApp
//
//  Created by Александр Владыко on 19.01.22.
//

var operation: SupportedOperation?
var countOfArgs: UInt8?
var arguments:[Int] = []


print("Please, choose operation (+, -, *, /, ^):")
var isAssigned = false
repeat {
    operation = SupportedOperation.init(rawValue: String(readLine() ?? ""))
    if operation != nil {
        print("Operation was successfully chosen")
        isAssigned = true
    } else {
        print("Please, choose another value")
    }
} while !isAssigned

print("How much arguments you want to use?")
isAssigned = false
repeat {
    if operation == SupportedOperation.power {
        countOfArgs = 2
        break
    }
    countOfArgs = UInt8(readLine() ?? "")
    if countOfArgs != nil {
        print("Count of arguments was successfully chosen")
        isAssigned = true
    } else {
        print("Please, choose another value")
    }
} while !isAssigned

print("Please, enter arguments, pushing enter after each one (for ^: number, then power):")
repeat {
    if let argument = Int(readLine() ?? "") {
        arguments.append(argument)
        print("Argument successfully added")
    } else {
        print("Please, choose another value")
    }
} while arguments.count < countOfArgs!

let result = operate(operation, arguments)
print("Result of \(operation!) for \(arguments) = \(result)")
