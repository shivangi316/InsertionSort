var firstIndex = 1
var secondIndex = 1
var swaps = 0
var totalSwaps = 0
//var array = unsortedIntegers
var unsortedIntegers = [String]()
func input () -> [String]{
    var line : String?
    repeat {
        line = readLine()
        if line != nil {
            unsortedIntegers.append(line!)
        }
    }while line != nil
    return unsortedIntegers
}
 
//var  unsortedIntegers = (readLine(strippingNewline: true))?.split {$0 == " "}.map (String.init)
func swap(integers: inout[String], firstINdex: Int, secondINdex: Int) {
    let temp = integers[secondINdex]
    integers[secondINdex] = integers[firstINdex]
    integers[firstINdex] = temp
    swaps += 1
    
    totalSwaps += 1
}


//print("Pass: 0, Swaps: 0/0, Array: \(array)")

    if unsortedIntegers.count == 1 {
//        print("Pass: 1, Swaps: 0/0, Array: \(array)")
    } else {
    while firstIndex < unsortedIntegers.count {
            secondIndex = firstIndex
            while secondIndex > 0 {
            if unsortedIntegers[secondIndex] < unsortedIntegers[secondIndex-1]{
                swap(integers: &unsortedIntegers, firstINdex: secondIndex-1, secondINdex: secondIndex)
            }
            secondIndex -= 1
        }
    //    print ("Pass: \(firstIndex), Swaps: \(swaps)/\(totalSwaps), Array: \(array)")
        firstIndex += 1
        swaps = 0
        print(unsortedIntegers)
    }
    }






    //(previous, current) = (current, previous)
