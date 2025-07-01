// MARK: Triangular Pattern

func makeTriangularPyramid(rows: Int)
{
    for i in 0..<rows {
        var line: String = ""
        for _ in 0 ..< (rows - 1 - i)
        {
            line += " "
        }
        
        for _ in 0 ..< (2 * i + 1){
            line += "*"
        }
         print(line)
    }
    
   
}

makeTriangularPyramid(rows: 5)

// MARK: Right angle Triangle


func makeRighAngleTriangle()
{
    for i in 0..<5 {
        for _ in i..<5 {
            print("*", terminator: "")
        }
    }
}

makeRighAngleTriangle()
