// Playground - noun: a place where people can play

import UIKit

//1
class TipCalculator {
    //2
    let total : Double
    let taxPct : Double
    let subTotal : Double

    //3
    init(total: Double, tacPercentage : Double) {
        self.total = total
        self.taxPct = tacPercentage
        subTotal = total / (taxPct + 1)
    }
    
    //4
    func calcTipWithTipPct(tipPct : Double) -> Double {
        return subTotal * tipPct
    }
    
    //5
//    func printPossibleTips() {
//        let possibleTipsInferred = [0.15, 0.18, 0.20]
//        let possibleTipsExplicit : [Double] = [0.15, 0.18, 0.20]
//        
//        for possibleTip in possibleTipsInferred {
//            print ("\(possibleTip*100)%:  \(calcTipWithTipPct(possibleTip))")
//        }
////Alternative solution, but its preferred current solution instead
////        for i in 0..<possibleTipsInferred.count {
////            let possibleTip = possibleTipsExplicit[i]
////            print("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
////        }
//    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15, 0.18, 0.20, 0.23, 0.91, 0.78, 0.87]
        
        var retVal = [Int:Double]()
        //Dictionary<Int, Double>
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retVal[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retVal
    }
}

//6 
let tipCalc = TipCalculator(total: 33.25, tacPercentage : 0.06)
tipCalc.returnPossibleTips()






