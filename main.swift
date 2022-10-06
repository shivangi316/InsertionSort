var firstIndex = 1
var secondIndex = 1
var swaps = 0
var totalSwaps = 0
var array = unsortedIntegers

func swap(integers: inout[Int], firstINdex: Int, secondINdex: Int) {
    let temp = integers[secondINdex]
    integers[secondINdex] = integers[firstINdex]
    integers[firstINdex] = temp
    swaps += 1
    totalSwaps += 1
}
print("Pass: 0, Swaps: 0/0, Array: \(array)")

    if array.count == 1 {
        print("Pass: 1, Swaps: 0/0, Array: \(array)")
    } else {while firstIndex < array.count {
            secondIndex = firstIndex
            while secondIndex > 0 {
            if array[secondIndex] < array[secondIndex-1]{
                swap(integers: &array, firstINdex: secondIndex-1, secondINdex: secondIndex)
            }
            secondIndex -= 1
        }
        print ("Pass: \(firstIndex), Swaps: \(swaps)/\(totalSwaps), Array: \(array)")
        firstIndex += 1
        swaps = 0
    }
    }






