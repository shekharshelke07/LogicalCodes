import Foundation

/*
 Q. Remove the duplicates from array provided.
 */

var array: [Int] = [6,8,9,9,0,4,8,4,0,1]
var stringArray: [String] = ["Asian", "Europian", "Norveian", "Asian", "Europian"]
var charArray = ["aa","c","b", "aa", "e","b", "a", "e"]

// Solution1
// func removeDuplicates(array: inout [Int]) {
//     var newArray: [Int] = []
    
//     for num in array {
//         if !newArray.contains(num) {
//             newArray.append(num)
//         }
//     }
//     array = newArray
// }

// removeDuplicates(array: &array)
// print(array)


// Solution 2
extension Array where Element: Equatable
{
    mutating func removeDuplicates()
    {
        var tempArray: [Element] = []
        for num in self {
            if !tempArray.contains(num) {
                tempArray.append(num)
            }
        }
        self = tempArray
    }
}

stringArray.removeDuplicates()
print(stringArray)
