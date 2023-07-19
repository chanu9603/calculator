class AddOperation{
    func addNum(_ a: Double, _ b: Double) -> Double{
        return a + b
    }
}

class SubtractOperation{
    func substractNum(_ a: Double, _ b: Double) -> Double{
        return a - b
    }
}

class MultiplyOperation{
    func multiplyNum(_ a:Double, _ b:Double) -> Double{
        return a * b
    }
}

class DivideOperation{
    func divideNum(_ a:Double, _ b:Double) -> Double{
        return a / b
    }

}


class Calculator{
    let add = AddOperation()
    
    func add(_ a: Double, _ b:Double) -> Double{
        return add.addNum(a, b)
    }
    
    
    let substract = SubtractOperation()
    
    func substract(_ a: Double, _ b:Double) -> Double{
        return substract.substractNum(a, b)
    }
    
    
    let multiply = MultiplyOperation()
    
    func multiply(_ a:Double, _ b:Double) -> Double{
        return multiply.multiplyNum(a,b)
    }
    
    
    let divide = DivideOperation()
    
    func divide (_ a:Double, _ b:Double) -> Double{
        if b == 0 {
            print("0으로 나눌 수 없습니다.")
        }
        return divide.divideNum(a, b)
    }
    
    
    func remain(_ a : Double, _ b : Double) -> Double {
        return a.truncatingRemainder(dividingBy: b)
    }
}

let calculator = Calculator()

// 계산하고싶은 숫자 넣는 곳
let num1 = 5.0
let num2 = 2.0

print("\(num1) + \(num2) = \(calculator.add(num1,num2))")
print("\(num1) - \(num2) = \(calculator.substract(num1,num2))")
print("\(num1) * \(num2) = \(calculator.multiply(num1,num2))")
print("\(num1) / \(num2) = \(calculator.divide(num1,num2))")
print("\(num1)을 \(num2)로 나눈 나머지는 \(calculator.remain(num1,num2))")
