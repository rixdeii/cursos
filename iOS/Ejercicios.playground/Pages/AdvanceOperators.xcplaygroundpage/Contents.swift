//: [Previous](@previous)

import Foundation

// ****************** infix operator // ******************

infix operator /?
extension Float{
    
    static func /? (f:Float, f1: Float)->Float{
        return f > f1 ? f1 : 0
    }
    
}

let someNumber: Float = 5 /? 3





enum MiddelWareError{
    case faliureExample( error: String )

}

func recibeError<T>(enumExample: T ){
    
    let m = enumExample  as! MiddelWareError
    switch m{
        

        
    case .faliureExample(error: <#T##String#>)
        <#code#>
    }
    
}


let me = MiddelWareError.faliureExample(error: "Este es mi error")

recibeError(enumExample: me)






