import Foundation

func insertionSort( array: inout [Int]) -> [Int] {
    
    for i in 1 ..< array.count {
        var y = i
        while y > 0 , array[y] < array[y-1] {
            let temp = array[y-1]
            array[y-1] = array[y]
            array[y] = temp
            y -= 1
        }
    }
    return array
}

var a = [ 8, 3, 5, 4, 6 ]
print(insertionSort(array: &a))
