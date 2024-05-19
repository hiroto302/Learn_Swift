import Foundation


// クロージャ : 簡略化した、名前のない関数のこと

//@main
class Closure0 {

    static func main() throws {
        let instance = Closure0()
        instance.SayHelloName(name: "hiro")
    }


    // 通常のクロージャ
    let Hello =  { (name: String) -> String in
        return "こんにちは\(name)"
    }
    // 引数を省略したクロージャ
    let Helloo = { () -> String in
        return "こんにちは kento"
    }
    // さらには、特に処理を行うことなく戻り値を返すだけの場合、return を省略可能
    let Hellooo = { () -> String in
        "こんにちは yuko"
    }
    // さらに戻り値を省略する場合は、特定の処理を実行できる
    let helloooo = { () -> () in
        print("こんにちは kenniti")
    }
    // 引数と戻り値がない場合は、さらに省略した記述ができる
    let hellooooo = {
        print("こんちゃ")
    }

    func SayHelloName(name : String) {
        print(Hello(name))
    }
}
