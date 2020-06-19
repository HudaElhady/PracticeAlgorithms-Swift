import Foundation

func insertionSort( array:[Int]) -> [Int] {
    var a = [Int]()
    for i in 0 ..< array.count {
        print(i)
        var y = i
        a.append(array[i])
        while y > 0 , a[y] < a[y-1] {
            let temp = a[y-1]
            a[y-1] = a[y]
            a[y] = temp
            y -= 1
        }
    }
    return a
}

func insertionInPlaceSort<T>( array: [T], isOrderedBefore: (T,T) -> Bool) -> [T] {
    var a = array
    for i in 1 ..< a.count {
        var y = i
        let temp = a[y]
        while y > 0 , isOrderedBefore(temp , a[y-1]) {
            a[y] = a[y-1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}

var a = [ 8, 3, 5, 4, 6 ]
print(insertionInPlaceSort(array: a, isOrderedBefore: <))
let strings = [ "b", "a", "d", "c", "e" ]
print(insertionInPlaceSort(array: strings, isOrderedBefore: <))
//print(insertionSort(array: a))
