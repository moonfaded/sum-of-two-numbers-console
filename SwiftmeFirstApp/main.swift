//
//  main.swift
//  SwiftmeFirstApp
//
//  Created by Александр Владыко on 19.01.22.
//

var operation: SupportedOperation?
var countOfArgs: UInt8?
var arguments:[Int]


print("Please, choose operation (+, -, *, /, ^):")
operation = getOperation() 

print("How much arguments you want to use?")
countOfArgs = operation == SupportedOperation.power ? 2 : getCountOfArgs()

print("Please, enter arguments, separate by Enter:")
arguments = getArguments()

let result = operate(operation, arguments)
print("Result of \(operation!) for \(arguments) = \(result)")
