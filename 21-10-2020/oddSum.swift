import Foundation
import Glibc

func oddSum(highestNumber: Int) {
    var sum = 0
    for each in 0...highestNumber {
        if each % 2 == 1 {
            sum = sum + each
            print(sum)
        }
    }
}
print(oddSum(highestNumber: 12))
