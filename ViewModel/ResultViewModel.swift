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
    @Published var memberType: TypeModel = TypeModel(title: "", name: "", adaptability: 0, hashtags: ["","","",""], memoji: "", description: "", wantToLearn: ["","",""], strength: ["","",""], pointColor: Color.clear, summary: "", bio: "", previewMemoji: "")
    @Published var questions: [QuestionModel] = [
        .init(questionNumber: 1,
              question: "Our Big Idea를\n제시받았을 때...",
              toolTip: "처음 Our Big Idea를 제시받았을 때 어떠셨나요? 막막함에서 나온 저희만의 솔루션, 지금부터 들려 드릴게요.",
              answers: [Answer(answerNumber: 1, answerTitle: "기대돼", answer: "자유롭게 주제를 정할 수 있어서 오히려 좋아!"),
                        Answer(answerNumber: 2, answerTitle: "막힌다", answer: "너무 모호하다... 조금 더 구체적인 설명을 해주었으면 좋겠어")],
              values: [TypeValue(soniaType: 1, jayType: 1, lorenzoType: 1, guardyType: 0, ericType: 0),
                       TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 1, ericType: 1),
                      ]),
        
            .init(questionNumber: 2,
                  question: "나는 팀플에서...",
                  toolTip: "아이디어를 화산처럼 내뿜는 팀원들도 필요하지만, 이것을 귀담아듣고 있다가 정리하고 피드백하는 팀원들도 필요한 법.",
                  answers: [Answer(answerNumber: 1, answerTitle: "주도형", answer: "아이디어를 활발히 내며 주도하는 편"),
                            Answer(answerNumber: 2, answerTitle: "경청형", answer: "아이디어를 내기보단 경청하며 피드백하는 편")],
                  values: [TypeValue(soniaType: 0, jayType: 1, lorenzoType: 0, guardyType: 1, ericType: 0),
                           TypeValue(soniaType: 1, jayType: 0, lorenzoType: 1, guardyType: 0, ericType: 1)
                          ]),
        
            .init(questionNumber: 3,
                  question: "분업을 진행할 때...",
                  toolTip: "CBL의 발산과 수렴이 반복되는 과정에서 두 유형이 조화를 이루어 더 다양한 질문을 만들 수 있었어요.",
                  answers: [Answer(answerNumber: 1, answerTitle: "전문형", answer: "나는 내가 잘하는 걸 하고 싶어"),
                            Answer(answerNumber: 2, answerTitle: "배움형", answer: "잘 모르지만 궁금한 분야를 경험해보고 싶어")],
                  values: [TypeValue(soniaType: 1, jayType: 0, lorenzoType: 0, guardyType: 0, ericType: 1),
                           TypeValue(soniaType: 0, jayType: 1, lorenzoType: 1, guardyType: 1, ericType: 0)
                          ]),
        
            .init(questionNumber: 4,
                  question: "질문 발산할 때\n나는...",
                  toolTip: "각자가 원하는 방향으로 분업을 진행했어요. 참고로, 에릭과 쏘니아는 전문형, 가디, 로렌조, 제이는 배움형이 나왔답니다.",
                  answers: [Answer(answerNumber: 1, answerTitle: "일단 던져!", answer: "아이디어를 던지고 보는 타입"),
                            Answer(answerNumber: 2, answerTitle: "잠시 생각 좀..", answer: "생각을 가다듬고 말하는 타입")],
                  values: [TypeValue(soniaType: 0, jayType: 1, lorenzoType: 0, guardyType: 1, ericType: 0),
                           TypeValue(soniaType: 1, jayType: 0, lorenzoType:1, guardyType: 0, ericType: 1)
                          ]),
        
            .init(questionNumber: 5,
                  question: "프로젝트\n진행 시...",
                  toolTip: "마냥 활발하지만은 않은 커뮤니케이션, 잡담도 많이 하지 않는 우리 팀... 하지만 메타버스가 등장하며 모든 건 달라졌다..!",
                  answers: [Answer(answerNumber: 1, answerTitle: "잡담은 나의 원동력!", answer: "중간중간 잡담을 많이 한다."),
                            Answer(answerNumber: 2, answerTitle: "잡담은 사치일 뿐", answer: "주어진 일에 모든 집중을 쏟는다!")],
                  values: [TypeValue(soniaType: 1, jayType: 1, lorenzoType: 0, guardyType: 1, ericType: 1),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 1, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 6,
                  question: "CBL 활동 중에서...",
                  toolTip: "메타버스 플랫폼에서는 텍스트와 대화 소통 모두 가능했어요. 모두가 활발히 참여했고 다양한 의견들을 모을 수 있었어요.",
                  answers: [Answer(answerNumber: 1, answerTitle: "텍스트형", answer: "나는 의견을 스토리보드에 적는 게 좋아!"),
                            Answer(answerNumber: 2, answerTitle: "대화형", answer: "오디오가 끊기지 않으면서 계속 대화로 의견을 주고받고 싶어!")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 1, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 1, jayType: 1, lorenzoType: 0, guardyType: 1, ericType: 1)
                          ]),
        
            .init(questionNumber: 7,
                  question: "피드백 시간\n나는...",
                  toolTip: "MC1 초반, Team Norms 기억나시나요? 저희 팀은 ‘의견 존중', ‘근거 있는 피드백' 이라는 규칙에 따라 피드백을 효과적으로 주고받았어요.",
                  answers: [Answer(answerNumber: 1, answerTitle: "배려형", answer: "상처 받을 수도 있으니 최대한 부드럽게 말하기"),
                            Answer(answerNumber: 2, answerTitle: "실속형", answer: "조금은 직설적으로 피드백하기")],
                  values: [TypeValue(soniaType: 1, jayType: 0, lorenzoType: 1, guardyType: 0, ericType: 1),
                           TypeValue(soniaType: 0, jayType: 1, lorenzoType: 0, guardyType: 1, ericType: 0)
                          ]),
        
            .init(questionNumber: 8,
                  question: "솔루션을\n변경하자는\n분위기!",
                  toolTip: "그동안 열심히 구상하던 솔루션을 변경하자는 분위기 속 의견의 대립이 일어났어요. 어떻게 해결했을까요?",
                  answers: [Answer(answerNumber: 1, answerTitle: "희망형", answer: "그럴 수 있지.. 수긍하고 다시 계획 세우기"),
                            Answer(answerNumber: 2, answerTitle: "절망형", answer: "이럴 순 없어... 이 솔루션이 제일 좋은데!\n팀원들 한 번 더 설득해보기")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 1, guardyType: 1, ericType: 1),
                           TypeValue(soniaType: 1, jayType: 1, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 9,
                  question: "ACT를\n해야 하는데...",
                  toolTip: "발표 자신 있으신 분?!을 외친 순간 팀원들의 눈동자가 흔들렸어요. 발표를 두려워하지 않는 제이가 저희를 살렸어요.",
                  answers: [Answer(answerNumber: 1, answerTitle: "발표 싫어", answer: "발표는 제발 안 했으면 좋겠어.. ㅠ"),
                            Answer(answerNumber: 2, answerTitle: "발표? 괜찮아!", answer: "발표하는 것도 뭐.. 나쁘지 않아")],
                  values: [TypeValue(soniaType: 0, jayType: 0, lorenzoType: 1, guardyType: 1, ericType: 1),
                           TypeValue(soniaType: 1, jayType: 1, lorenzoType: 0, guardyType: 0, ericType: 0)
                          ]),
        
            .init(questionNumber: 10,
                  question: "팀 회고를\n진행할 때 나는...",
                  toolTip: "우리의 첫 CBL 프로세스. 다들 어떻게 느끼셨는지 궁금해요. 새로운 방식에 눈이 번쩍 뜨이셨나요, 아니면 끝없는 과정에 지치셨나요?",
                  answers: [Answer(answerNumber: 1, answerTitle: "숨김형", answer: "내 속마음이 공개되는 게 창피하다.\n살짝 다른 내용을 쓴다."),
                            Answer(answerNumber: 2, answerTitle: "솔직형", answer: "이때 아니면 언제 내 속마음을 털어놓을까.\n여지없이 다 적는다.")],
                  values: [TypeValue(soniaType: 1, jayType: 1, lorenzoType: 1, guardyType: 0, ericType: 0),
                           TypeValue(soniaType: 0, jayType: 0, lorenzoType: 0, guardyType: 1, ericType: 1)
                          ]),
        
            .init(questionNumber: 11,
                  question: "나는 CBL을\n진행하면서...",
                  toolTip: "팀 회고를 진행하면서 진솔한 감정을 전부 드러낸 분들도 있고, 부끄러움에 속마음을 숨기신 분도 있을 텐데요, “나만 진심이었어?”",
                  answers: [Answer(answerNumber: 1, answerTitle: "기 빨림형", answer: "계속 발산과 수렴?? 너무 기 빨려.."),
                            Answer(answerNumber: 2, answerTitle: "적성에 딱", answer: "다양한 아이디어를 주고받으니까 너무 신나!")],
                  values: [TypeValue(soniaType: 0, jayType: 1, lorenzoType: 1, guardyType: 0, ericType: 1),
                           TypeValue(soniaType: 1, jayType: 0, lorenzoType: 0, guardyType: 1, ericType: 0)
                          ]),
    ]
    
    let memberTypes: [TypeModel] = types
    

    
    func insertValue(value: TypeValue) {
        self.selectedValue = value
    }
    
    func deriveResult() {
        let array: [String:Double] = ["에릭" : value.ericType, "쏘니아" : value.soniaType, "제이" : value.jayType, "로렌조" : value.lorenzoType, "가디" : value.guardyType]
        if let maxKey = array.max(by: { a, b in a.value <= b.value })?.key {
            self.memberName = maxKey
            print(memberName)
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



