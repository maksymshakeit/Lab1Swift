enum CalculatorError: Error {
    case divisionByZero
}
func add(_ a: Int, to b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, from b: Int) -> Int {
    return b - a
}

func multiply(_ a: Int, by b: Int) -> Int {
    return a * b
}
func divide(_ a: Int, by b: Int) throws -> Int {
    guard b != 0 else {
        throw CalculatorError.divisionByZero
    }
    return a / b
}

do {
    let num1 = 10
    let num2 = 0
    
    let additionResult = add(num1, to: num2)
    print("Додавання: \(additionResult)")
    
    let subtractionResult = subtract(num1, from: num2)
    print("Віднімання: \(subtractionResult)")
    
    let multiplicationResult = multiply(num1, by: num2)
    print("Множення: \(multiplicationResult)")

    let divisionResult = try divide(num1, by: num2) // Ділення на нуль
    print("Ділення: \(divisionResult)")
    
} catch CalculatorError.divisionByZero {
    print("Помилка: Ділення на нуль")
}