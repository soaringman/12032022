import Foundation

/*
 
 Фукциональное программирование в Swift или фукции высшего порядка
 
 */

//Простая фильтрация массива
//Фильтрация старым способом (Императивная версия)

var evens = [Int]()
for i in 1...10 {
    if i % 2 == 0 {
        evens.append(i)
    }
}
print(evens)

//Функциональная фильтрация

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
evens = Array(1...10).filter(isEven)
print(evens)
