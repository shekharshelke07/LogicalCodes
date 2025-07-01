import Foundation

var input: String = "Komal"

//func reverseString(input: inout String) {
//    var reversed: String = ""
//    for char in input {
//        reversed = String(char) + reversed
//    }
//    print(reversed)
//}

/// More efficient:

func reverseString(input: inout String) {
    var chars = Array(input)
    var left: Int = 0
    var right: Int = input.count - 1
    while left < right {
        chars.swapAt(left, right)
        left += 1
        right -= 1
    }
    print(String(chars))
}
reverseString(input: &input)


