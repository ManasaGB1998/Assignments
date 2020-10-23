let SortNumbersAndSquareEvenNumbers = {
    (list: [Int])
    in
    
    var evenList = [Int] ()
    var squareList = [Int] ()
    
    for (_, value) in list.enumerated() {
        if(value % 2 == 0) {
            evenList.append(value)
            squareList.append(value * value)
        }
    }
    print(evenList.sorted())
    print(squareList.sorted())
}


let numberList = [9, 6, 2, 7, 4, 3, 8]

SortNumbersAndSquareEvenNumbers(numberList)