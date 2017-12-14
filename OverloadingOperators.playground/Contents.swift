//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct RandomStruct {
    var part1: Int
    var part2: Int
    var part3: Int
}

func + (rs1: RandomStruct, rs2: RandomStruct) -> RandomStruct {
    let part1 = rs1.part1 + rs2.part1
    let part2 = rs1.part2 + rs2.part2
    let part3 = rs1.part3 + rs2.part3
    
    return RandomStruct(part1: part1, part2: part2, part3: part3)
}

let struct1 = RandomStruct(part1: 2, part2: 3, part3: 4)
let struct2 = RandomStruct(part1: 3, part2: 4, part3: 5)

let addedStruct = struct1 + struct2
