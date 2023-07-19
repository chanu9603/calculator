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

/*
연산 클래스와 calculator 클래스를 분리함으로써 생길 수 있는 이점을 생각해 보았다.
기존 코드에서는 calculator class안에 모든 기능이 들어가 있어 클래스내에 문제가 생겼을 때 보수가 어려울 수 있다.
그러나 각각의 함수를 다른 클래스 안에 정의하면, 책임이 그 클래스 안에만 한정되기 때문에 수정이 용이하다.
*/
