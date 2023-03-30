//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

struct TypeModel {
    let title: String
    let name: String
    let adaptability: Int
    let hashtags: [String]
    let memoji: String
    let description: String
    let wantToLearn: [String]
    let strength: [String]
    let pointColor: Color
    let want: String
    let strength: String
}

let types: [TypeModel] = [.init(title: "분위기 메이커 에릭",
                                name: "에릭",
                                adaptability: 4,
                                hashtags: ["#이타적 탐구가", "건강한 욕심",
                                           "CBL 어렵지만 인정", "몰입의 힘"],
                                memoji: "Memoji_Eric",
                                description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                wantToLearn: ["쏘니아의 의견 정리 능력", "가디의 스몰토크", "제이의 발표능력"],
                                strength: ["자기주도적 성장을 하고 있어요", "아이디어를 구현하기 위해 항상 노력해요", "팀원을 생각하는 이타적인 모습이 돋보여요"],
                                pointColor: Color.ericOrange),
                          
                          .init(title: "그저 '빛' 쏘니아",
                                name: "쏘니아",
                                adaptability: 4,
                                hashtags: ["#청중을 사로잡는 디자인", "#경청 능력",
                                             "#팀에 애정 가득", "#CBL 어렵지만 재밌어!"],
                                memoji: "Memoji_Sonia",
                                description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                wantToLearn: ["가디의 거침없는 아이디어 공유", "에릭의 생존형 집중력", "제이의 이성적인 판단 능력"],
                                strength: ["영리한 방법으로 정보를 시각화할 수 있어요", "팀원들의 아이디어를 하나로 정리해요", "편안한 분위기를 만들어내는 재능이 있어요"],
                                pointColor: Color.soniaGreen),
                          
                          .init(title: "발표의 신 제이",
                                name: "제이",
                                adaptability: 5,
                                hashtags: ["#탁월한 커뮤니케이터", "#CBL 최고야!",
                                            "#비공식 발표담당", "#목표에 대한 열정"],
                                memoji: "Memoji_Jay",
                                description: "축하합니다! 당신은 Jay타입입니다.\n\nJay는 팀원들과 의견을 주고 받는 것을 즐기며 그 과정 속에서 에너지를 얻습니다. 어떤 의견이든 주장과 근거의 관계가 합리적이라고 생각하면 수용하고 반영하는 편입니다.\n\n여러 분야에서 다양한 경험을 쌓는 것을 매우 가치있게 여겨서 아카데미 기간동안 다양한 분야의 경험을 쌓으려는 계획을 가지고 있어요.\n\n비효율적이라고 생각이 들면 이를 효율적으로 고치고 싶어해요.",
                                wantToLearn: [],
                                strength: ["발표하는 것을 두려워 하지 않아요", "탁월한 커뮤니케이션 능력을 갖고 있어요", "다양한 아이디어를 생각하고 제시할 수 있어요"],
                              pointColor: Color.jayYellow),
                          
                          .init(title: "주도적 행동가 로렌조",
                                name: "로렌조",
                                adaptability: 2,
                                hashtags: ["#조용히 몰두", "#예리한 조력자",
                                           "#핵심을 간파하는 직관", "#CBL 적응중"],
                                memoji: "Memoji_Lorenzo",
                                description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                wantToLearn: ["쏘니아의 탁월한 디자인 능력", "에릭의 집중력과 테크 실력", "가디와 제이의 통찰력과 커뮤니케이션 능력"],
                                strength: ["팀원이 놓친 부분을 캐치할 수 있는 능력", "맡은 일을 묵묵히 진행할 수 있는 끈기", "주도적으로 일을 찾아 해결하는 추진력"],
                                pointColor: Color.lorenzoPink),
                          
                          .init(title: "경험치 만랩 가디",
                                name: "가디",
                                adaptability: 3,
                                hashtags: ["#CBL 어려워요", "#자존감 지킴이",
                                           "#걸어다니는 백과사전", "#탁! 길잡이"],
                                memoji: "Memoji_Guardy",
                                description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                wantToLearn: ["제이의 원활한 커뮤니케이션", "에릭의 건강한 몰입", "로렌조의 핵심을 간파하는 직관"],
                                strength: ["항상 팀원들에게 조언을 아낌없이 해줘요", "사람을 관찰하는 능력이 뛰어나요", "팀 회의 중 방향성을 명확히 잡아줘요"],
                                pointColor: Color.guardyBlue),
]
