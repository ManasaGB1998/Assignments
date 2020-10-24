let checkFermatClosure = {
    (a: Int, b: Int, c: Int, n: Int) -> String
    in
    
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
        let minValueOfn = "The value of n must be greater than 2!"
        return minValueOfn
    }
}
print(checkFermatClosure(5, 3, 4, 3))
