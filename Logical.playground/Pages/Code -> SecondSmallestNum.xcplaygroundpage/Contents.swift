/*
 Q. Find Second Smallest num from array
 Similar Q. Return sum of 2 minimum numbers of array
 */

var array: [Int] = [7,8,3,4,-2,0,4,8,-9]

//func findSecondMax(from array: [Int]) -> Int? {
//    guard array.count >= 2 else { return nil }
//    
//    var smallest: Int = Int.max
//    var secondSmallest: Int = Int.max
//    
//    for num in array{
//        if num < smallest {
//            secondSmallest = smallest
//            smallest = num
//        } else if num < secondSmallest && num != smallest {
//            secondSmallest = num
//        }
//    }
//    
//    return secondSmallest != Int.max ? secondSmallest : nil
//}
//
//if let secondSmallest = findSecondMax(from: array) {
//    print("second smallest num is \(secondSmallest)")
//} else {
//    print("number is nil")
//}


func sumOfMinTwo(from array: [Int]) -> Int? {
    guard array.count > 2 else { return nil }
    
    var smallest: Int = Int.max
    var secondSmallest: Int = Int.max
    
    for num in array{
        if num < smallest {
            secondSmallest = smallest
            smallest = num
        } else if num < secondSmallest && num != smallest {
            secondSmallest = num
        }
    }
    
    secondSmallest != Int.max ? secondSmallest : nil
    return smallest + secondSmallest
}

if let sumOfMinTwo = sumOfMinTwo(from: array) {
    print("sum of min 2 nums from array is \(sumOfMinTwo)")
} else {
    print("sum is nil")
}
