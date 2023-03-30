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
    @Published var memberType: TypeModel = TypeModel(title: "", name: "", adaptability: 0, hashtags: [], memoji: "", description: "", pointColor: Color.clear, want: "", strength: "")
    @Published var questions: [QuestionModel] = [
        .init(questionNumber: 1,
              question: "나는 팀플에서 주로...",
              answers: [Answer(answerNumber: 1, answerTitle: "잠입형", answer: "주로 아이디어를 먼저 내면서 주도하는 편이다.1"),
                        Answer(answerNumber: 2, answerTitle: "우리형", answer: "아이디어를 먼저 내기보다는 팀원들의 의견을 경청한다.1")],
              values: [TypeValue(soniaType: 3, jayType: 1, lorenzoType: 3, guardyType: 5, ericType: 2),
                       TypeValue(soniaType: 2, jayType: 2, lorenzoType: 10, guardyType: 3, ericType: 9),
                      ]),
        
            .init(questionNumber: 2,
                  question: "다시보니 우리팀 솔루션이 영 별론거 같다.. 이 때 나는...",
                  answers: [Answer(answerNumber: 1, answerTitle: "잠입형", answer: "주로 아이디어를 먼저 내면서 주도하는 편이다.2"),
                            Answer(answerNumber: 2, answerTitle: "우리형", answer: "아이디어를 먼저 내기보다는 팀원들의 의견을 경청한다.2")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                          ]),
        
            .init(questionNumber: 3,
                  question: "팀원들과 함께 공부하게 되었다. 이 때 나는...",
                  answers: [Answer(answerNumber: 1, answerTitle: "잠입형", answer: "주로 아이디어를 먼저 내면서 주도하는 편이다.3"),
                            Answer(answerNumber: 2, answerTitle: "우리형", answer: "아이디어를 먼저 내기보다는 팀원들의 의견을 경청한다.3")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                          ]),
        
            .init(questionNumber: 4,
                  question: "우리들의 CBL 결과물을 공개하는 ACT 시간이 왔다. 이 때 나는...",
                  answers: [Answer(answerNumber: 1, answerTitle: "잠입형", answer: "주로 아이디어를 먼저 내면서 주도하는 편이다.1"),
                            Answer(answerNumber: 2, answerTitle: "우리형", answer: "아이디어를 먼저 내기보다는 팀원들의 의견을 경청한다.1")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                          ]),
        
            .init(questionNumber: 5,
                  question: "CBL 활동에서 나는 의견을 표현할 때...",
                  answers: [Answer(answerNumber: 1, answerTitle: "잠입형", answer: "주로 아이디어를 먼저 내면서 주도하는 편이다.1"),
                            Answer(answerNumber: 2, answerTitle: "우리형", answer: "아이디어를 먼저 내기보다는 팀원들의 의견을 경청한다.1")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                          ]),
    ]
    
    let memberTypes: [TypeModel] = types
    

    
    
    
    func deriveResult() {
        let array: [String:Double] = ["에릭" : value.ericType, "소니아" : value.soniaType, "제이" : value.jayType, "로렌조" : value.lorenzoType, "가디" : value.guardyType]
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



extension Color {
    static var jayYellow = Color("jayYellow")
    static var soniaGreen = Color("soniaGreen")
    static var lorenzoPink = Color("lorenzoPink")
    static var guardyBlue = Color("guardyBlue")
    static var ericOrange = Color("ericOrange")
    static var backgroundBlack = Color("backgroundBlack")
    static var questionGray = Color("questionGray")
}
