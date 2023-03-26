//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI


enum MemberType {
    case Sonia
    case Jay
    case Lorenzo
    case Guardy
    case Eric
}

struct TypeModel {
    let title: String
    let name: String
    let adaptability: Int
    let hashtags: [String]
    let memoji: String
    let description: String
    let pointColor: Color
}

let types: [TypeModel] = [.init(title: "팀의 평화 지킴이 쏘니아",
                                name: "소니아",
                                adaptability: 4,
                                hashtags: ["#챌린지 몰두", "CBL...어렵지만 재밌어..!",
                                           "팀에 애정 가득", "경청 능력"],
                                memoji: "Memoji_Sonia",
                                description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                pointColor: Color.green),
                          .init(title: "팀의 평화 지킴이 쏘니아",
                                                          name: "소니아",
                                                          adaptability: 4,
                                                          hashtags: ["#챌린지 몰두", "CBL...어렵지만 재밌어..!",
                                                                     "팀에 애정 가득", "경청 능력"],
                                                          memoji: "Memoji_Jay",
                                                          description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                                          pointColor: Color.green),
                          .init(title: "팀의 평화 지킴이 쏘니아",
                                                          name: "소니아",
                                                          adaptability: 4,
                                                          hashtags: ["#챌린지 몰두", "CBL...어렵지만 재밌어..!",
                                                                     "팀에 애정 가득", "경청 능력"],
                                                          memoji: "Memoji_Eric",
                                                          description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                                          pointColor: Color.green),
                          .init(title: "팀의 평화 지킴이 쏘니아",
                                                          name: "소니아",
                                                          adaptability: 4,
                                                          hashtags: ["#챌린지 몰두", "CBL...어렵지만 재밌어..!",
                                                                     "팀에 애정 가득", "경청 능력"],
                                                          memoji: "Memoji_Guardy",
                                                          description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                                          pointColor: Color.green),
                          .init(title: "팀의 평화 지킴이 쏘니아",
                                                          name: "소니아",
                                                          adaptability: 4,
                                                          hashtags: ["#챌린지 몰두", "CBL...어렵지만 재밌어..!",
                                                                     "팀에 애정 가득", "경청 능력"],
                                                          memoji: "Memoji_Lorenzo",
                                                          description: "쏘니아에 당첨되신 걸 축하드립니다!\n 쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하고 팀원들과 친해져 갈수록 점차 말이 많아지는 타입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는 시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을 많이 하는 편이며, 다른 팀원의 아이디어에 감탄하고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭찬과 함께 해주어야 합니다.",
                                                          pointColor: Color.green),
]
