//: Playground - noun: a place where people can play

import UIKit

let num1: UInt8 = 0b00000000
let num2 = ~num1

let num3: UInt8 = 0b00110010
let num4: UInt8 = 0b10001111

let bitwiseAnd = num3 & num4 // 00000010
let bAnd: UInt8 = 0b00000010

let bitwiseOr = num3 | num4 // 10111111
let bOr: UInt8 = 0b10111111

let bitwiseXOr = num3 ^ num4 // 10111101
