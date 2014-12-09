// Playground - noun: a place where people can play

import UIKit

class TipCalculatorModel {
    let total: Double
    let taxPercent: Double
    let subtotal: Double
    
    init(total:Double, taxPercent:Double) {
        self.total = total
        self.taxPercent = taxPercent
        subtotal = total / (1 + taxPercent)
    }
    
    func calcTipWithTipPercent(tipPercent:Double) -> Double {
        return subtotal * tipPercent
    }
    
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        for possibleTip in possibleTipsInferred {
            println("\(possibleTip*100)%: \(calcTipWithTipPercent(possibleTip))")
        }
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInfered = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        var result = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInfered {
            let intPercent = Int(possibleTip * 100)
            result[intPercent] = calcTipWithTipPercent(possibleTip)
        }
        return result
    }
}

let tipCalc = TipCalculator(total: 22.33, taxPercent: 0.18)
tipCalc.returnPossibleTips()
