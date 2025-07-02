import Foundation

/*
 Q. from given array give me count of maximum consecutive ones
    [1,1,0,4,1,8,1,1,1]  ---> // output = 3
    [1,0,1,1,7,8] ---> // output = 2
 */

let array: [Int] = [1,1,0,4,1,1,0,8,1,1,1]

func countOfMaxConsecutiveOnes(from array: [Int]) -> Int {
    var maximumOne: Int = 0
    var count: Int = 0
    
    for num in array{
        if num == 1 {
            count += 1
            maximumOne = max(count, maximumOne)
        } else {
            count = 0
        }
    }
    
    return maximumOne
}

let count = countOfMaxConsecutiveOnes(from: array)
print(count)
