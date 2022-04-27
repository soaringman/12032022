import UIKit
import Foundation

//Are you using and undestand what is this Generics

/*
 Королева одного королевства попросила написать функцию,
 которая поможет ей посчитать всех подданых в королевстве,
 для этого напишем функцию
*/

func addInts(x: Int, y: Int) -> Int {
    return x + y
}

let intSum = addInts(x: 1, y: 2)

/*
 Королева довольна и теперь попросила написать функцию,
 для подсчета ее финансов, функция должна понимать значения Double
*/

func addDoubles(x: Double, y: Double) -> Double {
    return x + y
}

let doubleSum = addDoubles(x: 1.0, y: 2.0)

/*
 Мы видим что функции разные но их тела идентичны, поэтому мы можем объединить
 данные функции, но прежде чем мы это сделаем,
 рассмотрим другие типовые дженерики в повседневном применении в swift.
 
 Примерами таких Generics в swift могут быть:
 arrays, dictionaries, optionals, results
*/

// Arrays
let numbers = [1, 2, 3,]
let firtsNumber = numbers[0]

/*
 Если мы наведем курсор с зажатой кнопкой "Alt", мы увидим что наш numbers -
 это универсальный Generic
 
 Проиллюстрируем это на более длинном примере
*/

var numbersAgain: Array<Int> = []
numbersAgain.append(1)
numbersAgain.append(2)
numbersAgain.append(3)

let firstNumberAgain = numbersAgain[0]

/*
 Мы видим что тип новой константы firstNumberAgain так же будет Int
*/

// Dictionaries

/*
 Давайте попробуем добавить словарь для магических королевств и указанием кода
 стран
 */

let countryCodes = ["Arendelle": "AR", "Genovia":"GN", "Freedonia":"FR"]
let countryCode = countryCodes["Freedonia"]

/*
 Если мы посмотрим тип вышеукзанных констант то у них будет универсальный тип
 String, причем во втором случае опциональный
 */

// Optionals

enum MagicError: Error {
    case spellFailure
}

func cast(_ spell: String) -> Result<String, MagicError> {
    switch spell {
    case "flowers":
        return .success("цветы")
        
    case "stars":
        return .success("звезды")
    default:
        return .failure(.spellFailure)
    }
}

let result1 = cast("flowers")
let result2 = cast("avada kedavra")

struct Queue<Element> {
}

//private var elements: [Element] = []


//exaple of generic

func printString(objc: String) {
    print(objc)
}

func printAllType<T>(objc: T) {
    print(objc)
}

printAllType(objc: "ffdd")

protocol MyProtocol {
    func getArea<T>(width: T, height: T)
}

class MyClass: MyProtocol {
    func getArea<T>(width: T, height: T) {
    }
    func newMethod<T>(one:T, two:T){
    }
}

let a = MyClass()
a.getArea(width: 30, height: 20)



var q = Queue<Int>()
q.enqueue()
