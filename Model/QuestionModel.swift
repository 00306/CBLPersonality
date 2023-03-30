//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

struct Answer: Hashable {
    let answerNumber: Int
    let answerTitle: String
    let answer: String
    var isClicked: Bool = false
}

struct QuestionModel: Hashable {
    let questionNumber: Int
    let question: String
    let toolTip: String
    var answers: [Answer]
    let values: [TypeValue]
}

struct TypeValue: Hashable {
    var soniaType: Double
    var jayType: Double
    var lorenzoType: Double
    var guardyType: Double
    var ericType: Double
}



