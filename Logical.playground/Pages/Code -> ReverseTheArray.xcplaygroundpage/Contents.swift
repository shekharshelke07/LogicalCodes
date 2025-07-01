import Foundation

/*
 Q. Reverse the array provided.
 */

var input: [Int] = [0,1,2,8,-4,-9,7]

func reverseTheArray(input: inout [Int]) {
    var first: Int = 0
    var last: Int = input.count - 1
    
    while first < last {
        input.swapAt(first, last)
        first += 1
        last -= 1
    }
}

reverseTheArray(input: &input)

print(input)




