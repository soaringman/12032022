import UIKit


/*
 http://kodesource.top/swift-programming-exercises/basic/index.php
 */

/*
 1. Напишите программу Swift, чтобы вычислить сумму двух целых чисел.
 Если значения равны, верните тройку их сумму.
 */
func AequalB(number1 numA: Int, number2 numB: Int) -> Int {
    if numA == numB {
        return (numA + numB) * 3
    } else {
        return numA + numB
    }
}

let implemetationTask1 = AequalB(number1: 4, number2: 4)
print(implemetationTask1)

/*
 2. Напишите программу Swift для вычисления и возврата абсолютной
 разности n и 51, если n больше 51, возвратите двойную абсолютную разницу.
 */
func diff_51 (x: Int) -> Int {
    if x > 51 {
       return (x - 51) * 2
    } else {
        return 51 - x
    }
}

let implementationTask2 = diff_51(x: 45)
print(implementationTask2)

/*
 3. Напишите программу Swift, которая принимает два целочисленных значения
 и возвращает true, если одно из них равно 20 или их сумма равна 20.
 */
func Equal_20(num1: Int, num2: Int) -> Bool {
    (num1 == 20) || (num2 == 20) || ((num1 + num2) == 20)
}

let implementationTask3 = Equal_20(num1: 15, num2: 10)
print(implementationTask3)
/*
 5. Напишите программу Swift для добавления «Is» в начало заданной строки.
 Однако, если строка уже начинается с «Is», верните данную строку.
*/


func IsPresent_Is (word: String) -> String {
    if word.hasPrefix("Is") {
        return word
    } else {
        return "ls" + word
    }
}

let implementationTask4 = IsPresent_Is(word: "Value")
print(implementationTask4)

/*
 Имеется массив предлоджений, вывести наибольшее количество слов
 */
func mostWordsFound(_ sentences: [String]) -> Int {
    var myCountOfWords = 0
    for sentence in sentences {
        let myArrayOfWords = sentence.split(separator: " ")
        
        if myCountOfWords < myArrayOfWords.count {
            myCountOfWords = myArrayOfWords.count
        }
    }
    return myCountOfWords
}

/*
 For example, to retrieve the first word of a longer string, you can search for
 a space and then  create a substring form a prefix of the string up to that
 point:
 */

let name = "Marie Curie"
let firstSpace = name.firstIndex(of: " ") ?? name.endIndex
let firstName = name[..<firstSpace]

/*
 Given an array of strings words, return the words that can be typed using
 letters of the alphabet on only one row of American keyboard like the image
 below.
 
 1. Представить массив стрингов в виде отдельных слов путем перебора через
 цикл for in
 
 2. Пройтись по всем словам и сравнить их поочередно с массивами строк: line1,
 line2, line3.
 2.1 Перебрать каждый символ в слове и сравнить с каждым символом массива строки,
 если все символы слова содержаться в массиве строки, то переходим к третьему
 пункту
 
 3. Запушить слово если оно удовлетворяет условию
 
 2.
 
 */

//func findWords(_ text: [String]) -> [String] {
//    let line1 = "qwertyuiop"
//    let line2 = "asdfghjkl"
//    let line3 = "zxcvbnm"
//    var containsOfline: [String] = []
//
//    for word in text {
//        for wordCharacter in word.lowercased() {
//            containsOfline.append(word)
//            for lineCharacter in line1 {
//                if wordCharacter == lineCharacter { }
//                if line1.contains(wordCharacter) { }
//            }
//        }
//    }
//    return containsOfline
//}

//class Solution {
//    func missingNumber(_ nums: [Int]) -> Int {
//        var newNums = nums
//        newNums.sort(by: { firstElement, secondElement in firstElement < secondElement })
//        var mySequence = 0
//        var cqippingElement: [Int] = []
//        for currentElement in newNums {
//            if mySequence != currentElement {
//                cqippingElement.append(mySequence)
//            } else if newNums.last == mySequence { cqippingElement.append(mySequence + 1)}
//            mySequence += 1
//        }
//        return cqippingElement
//    }

//func missingNumber(_ nums: [Int]) -> Int {
//    var newNums = nums
//    newNums.sort(by: { firstElement, secondElement in firstElement < secondElement })
//    var mySequenceElement = 0
//    var skippingElement: Int = 0
//    for currentElement in newNums {
//        if mySequenceElement != currentElement {
//            skippingElement = mySequenceElement
//            mySequenceElement += 1
////            break
//        } else if { skippingElement = newNums.last ?? 0 + 1 }
//    }
//    return skippingElement
//}

func missingNumber(_ nums: [Int]) -> Int {
    var missing: Int = 0
    for num in 0...nums.count {
        if !nums.contains(num) {
            missing = num
            break
        }
    }
    return missing
}

let nums = [3,0,1]
print(missingNumber(nums))

var nums1 = [1,3,5,6], target = 2

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    guard let ourTargetIs = nums.firstIndex(of: target) else {
      var newNums = nums + [target]
        newNums.sorted(by: { firstElement, secondElement in firstElement < secondElement })
        return newNums.firstIndex(of: target) ?? 0
    }
    return ourTargetIs
}

/*
 В непустом массиве целых чисел nums каждый элемент встречается дважды,
 кроме одного. Найти этот элемент.
    а. Вы должны реализовать решение с линейной сложностью времени выполнения
    и использовать только константы.
 
    б. Использовать только константы.
 */

var nums136 = [4, 1, 2, 1, 2]

/* В цикле, беру первый по порядку элемент массива (назовем его n) и сравниваю
 его со вторым и последующими элементами, если сравнение true, то удаляю элемент
 массива, а сравниваемый элемент становиться n+1. Я придумал реализвать это только
 через двойной цикл for in. первый цикл для того что бы брать элементы для сравнения
 второй, что бы непосредственно пробегать по массиву и искать двойники и удалять из массива
 
 
 
 

*/

func singleElement( nums:[Int] ) -> Int {
    var localNums = nums
    for eachNumber in nums {
        for localNumber in localNums {
            if eachNumber == localNumber {
//           застопорился поскоку не нашел метода который бы удалял элемент из массива localNums
            }
        }
    }
    return 0
}
