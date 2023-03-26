//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

class ResultViewModel: ObservableObject {
    @Published var memberName: String = ""
    @Published var value: TypeValue = TypeValue(soniaType: 0.0, jayType: 0.0, lorenzoType: 0.0, guardyType: 0.0, ericType: 0.0)
    @Published var memberType: TypeModel = TypeModel(title: "", name: "", adaptability: 0, hashtags: [], memoji: "", description: "", pointColor: Color.clear)
    let memberTypes: [TypeModel] = types
    
    func deriveResult() {
        var array: [String:Double] = ["에릭" : value.ericType, "소니아" : value.soniaType, "제이" : value.jayType, "로렌조" : value.lorenzoType, "가디" : value.guardyType]
        if let maxKey = array.max(by: { $0.value < $1.value })?.key {
            self.memberName = maxKey
            }
        
        for index in 0..<memberTypes.count {
            if memberTypes[index].name == memberName {
                self.memberType = memberTypes[index]
            }
        }
    }
    
    func caculateValue(selectedAnswer: TypeValue) {
        self.value.ericType += selectedAnswer.ericType
        self.value.jayType += selectedAnswer.jayType
        self.value.soniaType += selectedAnswer.soniaType
        self.value.lorenzoType += selectedAnswer.lorenzoType
        self.value.guardyType += selectedAnswer.guardyType
    }
}
