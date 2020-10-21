import Foundation
import Glibc
 
func countDownToZero(value: Int) {
    print("  \(value)  bottles of water on the wall,\n",
           " \(value)  bottles of water,\n",
           " ya’ take one down, ya’ pass it around,\n",
           " \(value-1) bottles of water on the wall.\n")
    if value > 0 {
        countDownToZero(value: value - 1)
    }
    else if( value == 0)
    {
        print(" No bottles of water on the wall,\n",
        "no bottles of water,\n",
        "ya’ can’t take one down, ya’ can’t pass it around,\n",
        "’cause there are no more bottles of water on the wall!")

    }
}
countDownToZero(value:99)
