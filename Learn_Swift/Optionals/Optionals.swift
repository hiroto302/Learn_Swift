// Optional 型 : nil 値を代入することができる型
// let 定数名: 型?

import Foundation

@main
class Optionals {

    static func main() throws {
        
    }
    
    // Optional 型を扱う場合、アンラップする必要がある
    let optionalInt: Int? = 30

    // 強制的アンラップ : nil　以外の値が代入されていることを保証する
    func forceUnRap() {
        print(optionalInt!)
    }

    // オプショナルバインディング : if や guard を利用し、オプショナル型の値が nil　かどうかで処理を分ける方法

    func optionalBinding() {

        // if let では 定数をこの if文のスコープ内でしか利用できない
        if let unWrappedInt = optionalInt {
            print(unWrappedInt)
        }
        else {
            print("unWrappedIntは nil の値である")
        }

        // guard を利用すれば、範囲外でも使用することができる
        // guard : 意図しない処理を中断することができる
        guard let unWrappedInt = optionalInt else {
            // 条件に一致しなかった時の処理 ( let unWrappedInt に 定数が代入さなたかった時)
            print("unWrappedInt は nil")
            return
        }
        print("guard unWrappedInt の値 : \(unWrappedInt)")

    }
}

