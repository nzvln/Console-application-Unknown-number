//
//  main.swift
//  Unknown number
//
//  Created by Nadia on 11.11.2021.
//
import Foundation
print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")
// Случайное число
let randomNumber = UInt8.random(in: 1...250)
print("Введите вариант числа от 1 до 250 и нажмите Enter")
// флаг-указатель на победу
var isWin = false
repeat {
    // попытка преобразования введенного значения к UInt8
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Вы ввели некорректное число. Попробуйте снова")
continue }
    // проверка введенного числа
    if userNumber < randomNumber{
        print("Ваш вариант меньше загаданного числа")
    } else if userNumber > randomNumber {
        print("Ваш вариант больше загаданного числа")
    } else {
        print("Вы угадали")
isWin = true }
} while !isWin

