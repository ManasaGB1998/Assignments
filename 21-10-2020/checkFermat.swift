func checkFermat(a: Int, b: Int, c: Int, n: Int) -> String {
    if n >= 2 {
       let  rightHandSide = a^n + b^n
       let leftHandSide = c^n
        if rightHandSide == leftHandSide
        {
            let doesNotHoldGood = "Holy smokes, Fermat was wrong!"
            return doesNotHoldGood
        }
        else
        {
            let holdsGood = "No, that doesn’t work."
            return holdsGood
        }
    }
    else
    {
        let minValueOfn = "The value of n must be reater than 2!"
        return minValueOfn
    }
}
print(checkFermat(a: 5, b: 3, c: 4 , n: 3))