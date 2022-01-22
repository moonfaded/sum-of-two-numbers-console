//
//  main.swift
//  SwiftmeFirstApp
//
//  Created by Александр Владыко on 19.01.22.
//

var a: Int?
var b: Int?

repeat {
    print("Please, type first correct value")
    a = Int(readLine() ?? "")
} while a == nil

repeat {
    print("Please, type second correct value")
    b = Int(readLine() ?? "")
} while b == nil


let summmed = sum(a, b)
print("Sum of values = \(summmed)")
