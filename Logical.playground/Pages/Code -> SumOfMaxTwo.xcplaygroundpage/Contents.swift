import Foundation

/*
 Q. Write a code to return sum of max 2 elements in array
 
Similar one: Q. Find secondLargest Number from array
 */

var array: [Int] = [9,0,4,3,7,-2]

//func sumOfMaxTwo(from array: [Int]) -> Int? {
//    
//    guard array.count >= 2 else { return nil }
//    
//    var max: Int = Int.min
//    var secondMax: Int = Int.min
//    
//    for num in array{
//        if num > max {
//            secondMax = max
//            max = num
//        } else if num > secondMax && num != max {
//            secondMax = num
//        }
//    }
//    secondMax != Int.min ? secondMax : nil
//    return (max + secondMax)
//}
//
//print(sumOfMaxTwo(from: array) as Any)


func findSecondLargestNum(from array: [Int]) -> Int? {
    guard array.count >= 2 else { return nil }
    var largest: Int = Int.min
    var secondlargest: Int = Int.min
    
    for num in array {
        if num > largest {
            secondlargest = largest
            largest = num
        } else if num > secondlargest && num != largest {
            secondlargest = num
        }
    }
    
    return secondlargest != Int.min ? secondlargest : nil
}

if let secondLargestNum: Int = findSecondLargestNum(from: array) {
    print("second largest num is \(secondLargestNum)")
} else {
    print("num is nil")
}
