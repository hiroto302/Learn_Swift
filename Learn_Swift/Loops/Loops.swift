//
//  Loops.swift
//  Learn_Swift
//
//  Created by hiroto taniguchi on 2024/04/21.
//

import Foundation

//@main
class Loops {
    static func main() throws {
        let loops = Loops()
//        loops.printFromStringArray(array: loops.fruitsA)
//        loops.printFromStringSetArray(setArray: loops.fruitsS)
//        loops.printFromDictionary(loops.contacts)
//        loops.printFromString(loops.word)
//        loops.printIntRange(loops.halfOpenRange)
//        loops.printIntClosedRange(loops.closedRange)
//        loops.printLoopTime()
        loops.CountForHalfSeconds()
    }

    // Array
    let fruitsA: Array = ["apple", "pear", "orange"]
    // Set は順序が保証されていない
    let fruitsS: Set = ["apple", "pear", "orange"]
    // Dictionary
    let contacts = ["hiro": 1, "ken": 2, "kenIti": 3, "yuko": 4]
    // 文字列
    let word = "Hello Swift"
    
    //  Range (1 から 4の値を表す)
    let halfOpenRange = 1..<5
    //  ClosedRange (1 から 5 を表す)
    let closedRange = 1...5

    func printFromStringArray(array: [String]) {
        // for 変数 in シーケンス(配列や数値範囲など)
        for stringContent in array {
            // 繰り返し実行する処理
            print(stringContent)
        }
    }

    func printFromStringSetArray(setArray: Set<String>) {
        for stringContent in setArray {
            print(stringContent)
        }
    }

    func printFromDictionary(_ dictionary: [String: Int])
    {
        for (name, number) in dictionary {
            print("\(name) : \(number)")
        }
    }

    func printFromString(_ strings: String) {
        for stringContent in strings {
            print(stringContent)
        }
    }

    func printIntRange(_ intRange: Range<Int>) {
        for int in intRange {
            print(int)
        }
    }

    func printIntClosedRange(_ intRange: ClosedRange<Int>) {
        for int in intRange {
            print(int)
        }
    }

    func printLoopTime()
    {
        for _ in halfOpenRange {
            print("Loop is running while halfOpenRange Count")
        }
        print(halfOpenRange.count)
    }

    // While 文
    func CountForHalfSeconds() {
        var now = Date().timeIntervalSince1970
        let oneSecondFromNow = now + 0.5

        while now < oneSecondFromNow {
            now = Date().timeIntervalSince1970
            print(now)
        }
    }
}
