var myOptional: String?
myOptional = "Angela"

//1. Force Unwrapping
let text:String = myOptional!

//2. Check for nil vaue
myOptional = nil
if myOptional != nil{
    let text:String = myOptional!
}else{
    print("myoptional was found to be nil.")
}

//3. Optional binding
if let safeOptional = myOptional{
    print(safeOptional)
}
else{
    print("Optional binding yet nil")
}
//4. Nil Coalescing Operator
let text1:String = myOptional ?? "Nil Coalescing Operator triggered"
print(text1)

//5.Optional Chaining
struct MyOptional2{
    var property = 123
    func method(){
        print("I am a struct's method")
    }
}
let myOptional2: MyOptional2?
myOptional2 = MyOptional2()
myOptional2?.method()
