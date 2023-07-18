//
//  calculator.swift
//  calculator
//
//  Created by t2023-m0054 on 2023/07/18.
//

import Foundation

class Calculator{
    func add(_ a: Double, _ b:Double) -> Double{
        return a + b
        }
    func substract(_ a: Double, _ b:Double) -> Double{
        return a - b
        }
    func multiply(_ a: Double, _ b:Double) -> Double{
        return a * b
        }
    func divide(_ a: Double, _ b:Double) -> Double{
        if b == 0 {
            print("0으로 나눌 수 없습니다.")
        }
        return a / b
        }
    func remain(_ a : Double, _ b : Double) -> Double {
        return a.truncatingRemainder(dividingBy: b)
        }
    }

let calculator = Calculator()

// 계산하고싶은 숫자 넣는 곳
let num1 = 5.0
let num2 = 3.0

print("\(num1) + \(num2) = \(calculator.add(num1,num2))")
print("\(num1) - \(num2) = \(calculator.substract(num1,num2))")
print("\(num1) * \(num2) = \(calculator.multiply(num1,num2))")
print("\(num1) / \(num2) = \(calculator.divide(num1,num2))")
print("\(num1)을 \(num2)로 나눈 나머지는 \(calculator.remain(num1,num2))")
