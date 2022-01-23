//
//  func.swift
//  SwiftmeFirstApp
//
//  Created by Александр Владыко on 19.01.22.
//


enum SupportedOperation: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
    case power = "^"
}

func getOperation() -> SupportedOperation? {
    while true {
        if let typedOperation = SupportedOperation.init(rawValue: String(readLine() ?? "")) {
        print("Value successfuly gained")
        return typedOperation
        } else {
        print("Try supported value: ")
        }
    }
}

func getCountOfArgs() -> UInt8 {
    while true {
        if let typedCountOfArgs = UInt8(readLine() ?? "") {
            print("Value successfuly gained")
            return typedCountOfArgs
        } else {
            print("Try supported value: ")
        }
    }
}

func getArguments() -> [Int] {
    var result: [Int] = []
    repeat {
        if let argument = Int(readLine() ?? "") {
            result.append(argument)
            print("Argument successfully added")
        } else {
            print("Please, choose another value")
        }
    } while result.count < countOfArgs!
    return result
}

func operate(_ operation: SupportedOperation?, _ arguments:[Int]) -> Int {
    var result = arguments[0]
    
    switch operation! {
        
    case .addition:
        return arguments.reduce(0, +)
        
    case .subtraction:
            for index in 1..<arguments.count {
                result -= arguments[index]
            }
            return result
        
    case .multiplication:
        return arguments.reduce(1, *)
        
    case .division:
        for index in 1..<arguments.count {
            result /= arguments[index]
        }
        return result
        
    case .power:
        for _ in 1..<arguments[1] {
            result *= arguments[0]
        }
        return result
    }
}
