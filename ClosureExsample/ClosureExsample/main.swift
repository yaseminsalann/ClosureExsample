//
//  main.swift
//  ClosureExsample
//
//  Created by Yasemin salan on 4.03.2025.
//

import Foundation

func sum(num1:Int,num2:Int) -> Int {
    return num1+num2
}

print(sum(num1: 2, num2: 5))

//Sum -> (Int,Int) ->Int
func calculate(num1:Int,num2:Int,myfunction:(Int,Int)->Int) -> Int {
    return myfunction(num1,num2)
}
print(calculate(num1: 2, num2: 5, myfunction: sum))

//closure
print(calculate(num1: 4, num2: 9, myfunction: { (num1:Int,num2:Int) -> Int in
    return num1*num2
}))


print(calculate(num1: 4, num2: 9, myfunction: { (num1,num2) -> Int in
    return num1*num2
}))



print(calculate(num1: 4, num2: 9, myfunction: { (num1,num2) in
    return num1*num2
}))


print(calculate(num1: 4, num2: 9, myfunction: { (num1,num2) in
     num1*num2
}))


print(calculate(num1: 4, num2: 9, myfunction: { $0*$1
}))

let myArray = [10,20,30,40,50]

func test(num1:Int) -> Int {
    return num1/5
}

print(myArray.map(test))
print(myArray.map({$0 / 5}))


