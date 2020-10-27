import Foundation

var ArrayOfArrays = [[4, 2, 3], [4, 5, 4], [7, 22, 11]]
var result = 0

func findArrayOfArraySum(ArrayOfArrays: [[Int]], count:Int) -> Int {
    for i in 0..<ArrayOfArrays.count {
        result += sumOfArray(initialArray: ArrayOfArrays[i], count: count)
    }
    return result
}
func sumOfArray(initialArray: [Int], count: Int) -> Int {
    if (count <= 0) {
        return 0
    } else {
        return sumOfArray(initialArray: initialArray, count: (count - 1)) + initialArray[count - 1]
    }
}
print(findArrayOfArraySum(ArrayOfArrays: ArrayOfArrays, count: ArrayOfArrays.count))