

import Foundation


func solution(A:[Int], K: Int)->[Int]{
    
    func _ in 1..< k{
        
        
        
        
    }
    
}


func rotateRightOnce(A:[Int])->[Int]{
    var newArray = Array<Int>(repeating: 0, count: A.count)
    
    for i in 0..<A.count - 1 {
        newArray[i+1] = A[i]
    }
    newArray[0] = A.last!
    
    return newArray
    
}





rotateRightOnce(A: [1,2,3,4,5])



