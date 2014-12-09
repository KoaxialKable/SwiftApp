//
//  TipCalculator.swift
//  
//
//  Created by David Olsen on 9/9/14.
//
//
import Foundation

class TipCalculatorModel {
    var total: Double
    var taxPercent: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total:Double, taxPercent:Double) {
        self.total = total
        self.taxPercent = taxPercent
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
