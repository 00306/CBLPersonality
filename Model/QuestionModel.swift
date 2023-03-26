//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

struct QuestionModel: Hashable {
    let questionNumber: Int
    let question: String
    let answer: [String]
    let values: [TypeValue]
}

struct TypeValue: Hashable {
    let soniaType: Double = 0.0
    let jayType: Double = 0.0
    let lorenzoType: Double = 0.0
    let guardyType: Double = 0.0
    let ericType: Double = 0.0
}

var questions: [QuestionModel] = [
    .init(questionNumber: 1,
          question: "나는 팀플에서 주로...",
          answer: ["주로 아이디어를 먼저 내면서 주도하는 편이다.",
                   "아이디어를 먼저 내기보다는 팀원들의 의견을 경청한다.",
                   "아이디어를 내기 전에 괜찮은 아이디어일지 고민해보고 말하는 편이다.",
                   "아이디어를 내기보다는 의미있는 질문을 던짐으로써 팀원들의 괜찮은 아이디어를 유발한다."],
          values: .init()),
    
        .init(questionNumber: 2,
              question: "다시보니 우리팀 솔루션이 영 별론거 같다.. 이 때 나는...",
              answer: ["그럴 수 있지.. 수긍하고 다른 솔루션을 찾아본다.",
                   "어쩔 수 없다. 이미 많이 와버렸고, 죽이 되든 밥이 되든 우린 이걸로 간다.",
                   "솔루션이 이상한 거 같은데, 일을 크게 만드는 것 같아 팀원들에게 얘기하지 않는다.",
                   "이 솔루션을 먼저 얘기하고, 적극 동의한 팀원을 찾아 추궁한다."],
              values: .init()),
    
        .init(questionNumber: 3,
              question: "팀원들과 함께 공부하게 되었다. 이 때 나는...",
              answer: ["한 테이블에 다 같이 모여서 각자 공부한다.",
                   "공부할 때는 따로! 다른 테이블에 앉아야 집중이 잘된다.",
                   "공부하다가 가끔은 말 걸어주면 좋겠다. 주기적으로 산책도 가능.",
                   "그냥 집에서 한다."],
              values: .init()),
    
        .init(questionNumber: 4,
              question: "우리들의 CBL 결과물을 공개하는 ACT 시간이 왔다. 이 때 나는...",
              answer: ["발표는 죽어도.. 죽어도!! 안된다",
                       "발표도 좋고, 질문 받는 것도 좋다. 뭐든 시켜만 주세요.",
                       "나는 발표를 반드시 해야한다. 반드시 해야한다고.",
                       "청중의 평가와 매서운 질문 세례가 무섭다. 화장실에 가 숨는다"],
              values: .init()),
    
        .init(questionNumber: 5,
              question: "CBL 활동에서 나는 의견을 표현할 때...",
              answer: ["생각을 정리하기 위해 보드나 패드에 글을 적는 편이다.",
                       "사운드가 비면 안된다. 끊임없이 대화한다.",
                       "정적이 생겨도 된다. 좋은 생각이 날 때까지 곰곰히 생각해본다.",
                       "팀원이 먼저 대화 주제를 던져주면 거기서 연계되는 생각을 떠올린다."],
              values: .init()),
]
