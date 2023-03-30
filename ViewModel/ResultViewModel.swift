//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

class ResultViewModel: ObservableObject {
    @Published var memberName: String = ""
    @Published var selectedValue: TypeValue = TypeValue(soniaType: 0.0, jayType: 0.0, lorenzoType: 0.0, guardyType: 0.0, ericType: 0.0)
    @Published var value: TypeValue = TypeValue(soniaType: 0.0, jayType: 0.0, lorenzoType: 0.0, guardyType: 0.0, ericType: 0.0)
    @Published var memberType: TypeModel = TypeModel(title: "", name: "", adaptability: 0, hashtags: [], memoji: "", description: "", wantToLearn: [], strength: [], pointColor: Color.clear)
    @Published var questions: [QuestionModel] = [
        .init(questionNumber: 1,
              question: "Our Big Idea를\n제시받았을 때...",
              answers: [Answer(answerNumber: 1, answerTitle: "막힌다", answer: "너무 모호하다... 조금 더 구체적인 설명을 해주었으면 좋겠어"),
                        Answer(answerNumber: 2, answerTitle: "기대돼", answer: "자유롭게 주제를 정할 수 있어서 오히려 좋아!")],
              values: [TypeValue(soniaType: 3, jayType: 1, lorenzoType: 3, guardyType: 5, ericType: 2),
                       TypeValue(soniaType: 2, jayType: 2, lorenzoType: 10, guardyType: 3, ericType: 9),
                      ]),
        
            .init(questionNumber: 2,
                  question: "나는 팀플에서...",
                  answers: [Answer(answerNumber: 1, answerTitle: "주도형", answer: "아이디어를 활발히 내며 주도하는 편"),
                            Answer(answerNumber: 2, answerTitle: "경청형", answer: "아이디어를 내기보단 경청하며 피드백하는 편")],
                  values: [TypeValue(soniaType: 1, jayType: 2, lorenzoType: 3, guardyType: 6, ericType: 4),
                           TypeValue(soniaType: 2, jayType: 0, lorenzoType: 4, guardyType: 0, ericType: 2)
                          ]),
        
            .init(questionNumber: 3,
                  question: "분업을 진행할 때...",
                  answers: [Answer(answerNumber: 1, answerTitle: "전문형", answer: "나는 내가 잘하는 걸 하고 싶어"),
                            Answer(answerNumber: 2, answerTitle: "배움형", answer: "잘 모르지만 궁금한 분야를 경험해보고 싶어")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 999),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 4,
                  question: "질문 발산할 때\n나는...",
                  answers: [Answer(answerNumber: 1, answerTitle: "일단 던져!", answer: "아이디어를 던지고 보는 타입"),
                            Answer(answerNumber: 2, answerTitle: "잠시 생각 좀..", answer: "생각을 가다듬고 말하는 타입")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 5,
                  question: "프로젝트\n진행 시...",
                  answers: [Answer(answerNumber: 1, answerTitle: "잡담은 나의 원동력!", answer: "중간중간 잡담을 많이 한다."),
                            Answer(answerNumber: 2, answerTitle: "잡담은 사치일 뿐", answer: "주어진 일에 모든 집중을 쏟는다!")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 6,
                  question: "CBL 활동 중에서...",
                  answers: [Answer(answerNumber: 1, answerTitle: "텍스트형", answer: "나는 의견을 스토리보드에 적는 게 좋아!"),
                            Answer(answerNumber: 2, answerTitle: "대화형", answer: "오디오가 끊기지 않으면서 계속 대화로 의견을 주고받고 싶어!")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 7,
                  question: "피드백 시간\n나는...",
                  answers: [Answer(answerNumber: 1, answerTitle: "배려형", answer: "상처 받을 수도 있으니 최대한 부드럽게 말하기"),
                            Answer(answerNumber: 2, answerTitle: "실속형", answer: "조금은 직설적으로 피드백하기")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 8,
                  question: "솔루션을\n변경하자는\n분위기!",
                  answers: [Answer(answerNumber: 1, answerTitle: "희망형", answer: "그럴 수 있지.. 수긍하고 다시 계획 세우기"),
                            Answer(answerNumber: 2, answerTitle: "절망형", answer: "이럴 순 없어... 이 솔루션이 제일 좋은데!\n팀원들 한 번 더 설득해보기")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 9,
                  question: "ACT를\n해야 하는데...",
                  answers: [Answer(answerNumber: 1, answerTitle: "발표 싫어", answer: "발표는 제발 안 했으면 좋겠어.. ㅠ"),
                            Answer(answerNumber: 2, answerTitle: "발표? 괜찮아!", answer: "발표하는 것도 뭐.. 나쁘지 않아")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 10,
                  question: "팀 회고를\n진행할 때 나는...",
                  answers: [Answer(answerNumber: 1, answerTitle: "숨김형", answer: "내 속마음이 공개되는 게 창피하다.\n살짝 다른 내용을 쓴다."),
                            Answer(answerNumber: 2, answerTitle: "솔직형", answer: "이때 아니면 언제 내 속마음을 털어놓을까.\n여지없이 다 적는다.")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 11,
                  question: "나는 CBL을\n진행하면서...",
                  answers: [Answer(answerNumber: 1, answerTitle: "기 빨림형", answer: "계속 발산과 수렴?? 너무 기 빨려.."),
                            Answer(answerNumber: 2, answerTitle: "적성에 딱", answer: "다양한 아이디어를 주고받으니까 너무 신나!")],
                  values: [TypeValue(soniaType: 1, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 1, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
    ]
    
    let memberTypes: [TypeModel] = types
    

    
    func insertValue(value: TypeValue) {
        self.selectedValue = value
    }
    
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



