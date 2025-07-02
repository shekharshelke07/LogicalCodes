
/*
 Q. Write the logic to draw below star patterns
 */


// MARK: Pyramid
/*
 
    *
   ***
  *****
 *******
*********
 
 */

// Solution 1 - using String(repeating: , count: )
func makePyramid(rows: Int) {
    for i in 1...rows {
        let spaces: String = String(repeating: " ", count: rows - i)
        let stars: String = String(repeating: "*", count: 2 * i - 1)
        print(spaces + stars)
    }
}

// Solution 2 - without using predefined functions
//func makePyramid(rows: Int) {
//    for i in 0..<rows {
//        var line = ""
//        // Add leading spaces
//        for _ in 0..<(rows - 1 - i) {
//            line += " "
//        }
//        // Add stars
//        for _ in 0..<(2 * i + 1) {
//            line += "*"
//        }
//        print(line)
//    }
//}

makePyramid(rows: 5)


print("--------------------------------")

// MARK: Right angle Triangle - left aligned
/*
 
 *
 **
 ***
 ****
 *****
 
 */

// Solution 1 - using String(repeating: , count: )
func makeRightAngleTriangle(rows: Int)
{
    for i in 1...rows {
        let stars: String = String(repeating: "*", count: i)
        print(stars)
    }
}

// Solution 2 - without using predefined functions
//func makeRightAngleTriangle(rows: Int)
//{
//    for i in 0...rows {
//        for _ in 0 ..< i {
//            print("*", terminator: "")
//        }
//        print()
//    }
//}

makeRightAngleTriangle(rows: 5)

print("--------------------------------")

// MARK: Right angle Triangle - Right aligned
/*
 
     *
    **
   ***
  ****
 *****
 
 */

// Solution 1 - using String(repeating: , count: )
func makeRightAngledTriangle(rows: Int){
    for i in 1...rows {
        let spaces: String = String(repeating: " ", count: rows - i)
        let stars: String = String(repeating: "*", count: i)
        print(spaces + stars)
    }
}

// Solution 2 - without using predefined functions
//func makeRightAngledTriangle(rows: Int) {
//    for i in 1...rows {
//        for _ in 1...(rows - i)
//        {
//            print(" ", terminator: "")
//        }
//        for _ in 1...i {
//            print("*", terminator: "")
//        }
//        print()
//    }
//}

makeRightAngledTriangle(rows: 5)

print("--------------------------------")

// MARK: Inverted Right Angle triangle - left aligned

/*
 
*****
****
***
**
*
 
 */

// Solution 1 - using String(repeating: , count: )
//func makeIntvertedRighAngledTriangle(rows: Int) {
//    for i in 0 ... rows {
//        let spaces: String = String(repeating: "*", count: rows - i)
//        let stars: String = String(repeating: " ", count: i)
//        print(spaces + stars)
//    }
//}

// Solution 2 - without using predefined functions
func makeIntvertedRighAngledTriangle(rows: Int)
{
    for i in 1 ... rows {
        for _ in 0 ... (rows - i){
            print("*", terminator: "")
        }
        for _ in 0 ... i {
            print("", terminator: "")
        }
        print()
    }
}

makeIntvertedRighAngledTriangle(rows: 5)

print("----------------------------")

// MARK: Inverted Right Angle triangle - right aligned

/*
 
*****
 ****
  ***
   **
    *
 
 */

// Solution 1 - using String(repeating: , count: )
//func makeIntvertedRighAngleTriangle(rows: Int) {
//    for i in 0 ... rows {
//        let spaces: String = String(repeating: "*", count: rows - i)
//        let stars: String = String(repeating: " ", count: i)
//        print(stars + spaces)
//    }
//}

// Solution 2 - without using predefined functions
func makeIntvertedRighAngleTriangle(rows: Int)
{
    for i in 1 ... rows {
        for _ in 0 ... (i){
            print(" ", terminator: "")
        }
        for _ in i ... (rows){
            print("*", terminator: "")
        }
        print()
    }
}

makeIntvertedRighAngleTriangle(rows: 5)

print("----------------------------")

// MARK: Diamond pattern

/*
     *
    ***
   *****
  *******
 *********
  *******
   *****
    ***
     *
 */


// Solution 1: with using String(repeating: , count: )

func makeDiamond(rows: Int){
    for i in 1 ... rows{
        let spaces: String = String(repeating: " ", count: rows - i)
        let stars: String = String(repeating: "*", count: 2 * i - 1)
        print(spaces + stars)
    }
    for i in 1 ..< rows{
        let spaces: String = String(repeating: " ", count: i)
        let stars: String = String(repeating: "*", count: 2 * (rows - i) - 1)
        print(spaces + stars)
    }
}

// Solution 2: Without using predefined functions

//func makeDiamond(rows: Int)
//{
//    for i in 1 ... rows {
//        for _ in 0 ... (rows - i) {
//            print(" ", terminator: "")
//        }
//        
//        for _ in 1 ... (2 * i - 1) {
//            print("*", terminator: "")
//        }
//        
//       print()
//    }
//    
//    for i in 1 ..< rows {
//        for _ in 0 ... i {
//            print(" ", terminator: "")
//        }
//        
//        for _ in 1 ... (2 * (rows - i) - 1) {
//            print("*", terminator: "")
//        }
//        
//       print()
//    }
//}

makeDiamond(rows: 5)
