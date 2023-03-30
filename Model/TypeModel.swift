//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

struct TypeModel: Identifiable {
    let title: String
    let name: String
    let adaptability: Int
    let hashtags: [String]
    let memoji: String
    let description: String
    let wantToLearn: [String]
    let strength: [String]
    let pointColor: Color
    let summary: String
    let bio : String
    let previewMemoji: String
    
}

let types: [TypeModel] = [
    
                                .init(title: "발표의 신 ",
                                name: "제이",
                                adaptability: 5,
                                hashtags: ["#탁월한 커뮤니케이터", "#CBL 최고야!",
                                              "#비공식 발표담당", "#목표에 대한 열정"],
                                memoji: "Memoji_Jay",
                                description: "축하합니다! 당신은 Jay타입입니다.\n\nJay는 팀원들과 의견을 주고 받는 것을 즐기며 그 과정 속에서 에너지를 얻습니다. 어떤 의견이든 주장과 근거의 관계가 합리적이라고 생각하면 수용하고 반영하는 편입니다.\n\n여러 분야에서 다양한 경험을 쌓는 것을 매우 가치있게 여겨서 아카데미 기간동안 다양한 분야의 경험을 쌓으려는 계획을 가지고 있어요.\n\n비효율적이라고 생각이 들면 이를 효율적으로 고치고 싶어해요.",
                                wantToLearn: [],
                                strength: ["발표하는 것을 두려워 하지 않아요", "탁월한 커뮤니케이션 능력을 갖고 있어요", "다양한 아이디어를 생각하고 제시할 수 있어요"],
                                pointColor: Color.jayYellow,
                                summary: "합리적이고 근거있는 의견\n커뮤니케이션은 누구보다 진심\n다양한 분야의 경험이 필요해\n비효율을 효율로 바꾸는 힘",
                                bio: "CBL이 가장 쉬웠어요",
                                previewMemoji: "previewJay"),
                                .init(title: "분위기 메이커 ",
                                name: "에릭",
                                adaptability: 4,
                                hashtags: ["#이타적 탐구가", "#건강한 욕심",
                                           "#CBL 어렵지만 인정", "#몰입의 힘"],
                                memoji: "Memoji_Eric",
                                description: "와 부럽다, 에릭 타입이라니.\n\n에릭은 ‘일은 대체할 수 있어도, 사람은 대체할 수\n없다.’는 생각을 가지고, 항상 좋은 팀원이 되고자\n해요. 그러다 보니 팀원들에게 폐를 끼치지 않으려고, 여러 방면에서 부단히 노력합니다.\n\n규칙에 얽매이지 않고 자유롭게 일하는걸 선호하지\n만, CBL을 경험한 후, 좋은 프레임워크 속에서 일하\n는 것도 좋아하게 됐어요.\n\n하지만 체력이 바닥나게 되면, 모든 생각과 행동을\n멈추기 때문에 빨리 집으로 보내줘야 해요.",
                                wantToLearn: ["쏘니아의 의견 정리 능력", "가디의 스몰토크", "제이의 발표능력"],
                                strength: ["자기주도적 성장을 하고 있어요", "아이디어를 구현하기 위해 항상 노력해요", "팀원을 생각하는 이타적인 모습이 돋보여요"],
                                pointColor: Color.ericOrange,
                                summary: "아이디어 구현을 위한 끈기와 인내\n자기주도적 성장을 하고 있어\n따뜻하고 이타적인 마음의 소유자\n강한 욕심이라고 들어보셨나?",
                                bio: "몰입은 성장의 밑거름",
                                previewMemoji: "previewEric"
                                
                               ),
                          
                          
                          .init(title: "그저 '빛' ",
                                name: "쏘니아",
                                adaptability: 4,
                                hashtags: ["#청중을 사로잡는 디자인", "#경청 능력",
                                             "#팀에 애정 가득", "#CBL 어렵지만 재밌어!"],
                                memoji: "Memoji_Sonia",
                                description: "쏘니아에 당첨되신 걸 축하드립니다!\n\n쏘니아는 처음엔 조용한 것 같지만, 과정에 적응하\n고 팀원들과 친해져 갈수록 점차 말이 많아지는 타\n입입니다.\n\n하지만 체력이 매우 안 좋아 회의 2시간이 지나는\n시점부터 말수가 줄어드는 현상을 보이기도 합니다.\n\n최대한 창의적인 아이디어를 내고 싶어 해 고민을\n많이 하는 편이며, 다른 팀원의 아이디어에 감탄하\n고 부러워합니다.\n\n날카로운 피드백엔 상처받는 스타일이기 때문에 칭\n찬과 함께 해주어야 합니다.",
                                wantToLearn: ["가디의 거침없는 아이디어 공유", "에릭의 생존형 집중력", "제이의 이성적인 판단 능력"],
                                strength: ["영리한 방법으로 정보를 시각화할 수 있어요", "팀원들의 아이디어를 하나로 정리해요", "편안한 분위기를 만들어내는 재능이 있어요"],
                                pointColor: Color.soniaGreen,
                                summary: "아이디어 교통정리 담당\n청중을 사로잡는 정보의 시각화\n피드백은 부드럽게 부탁해\n이성적인 면모도 키워보고 싶어!",
                                bio: "애정 가득, 우리 팀 최고!",
                                previewMemoji: "previewSonia"),
                          
                          .init(title: "주도적 행동가 ",
                                name: "로렌조",
                                adaptability: 3,
                                hashtags: ["#조용히 몰두", "#예리한 조력자",
                                           "#핵심을 간파하는 직관", "#CBL 적응중"],
                                memoji: "Memoji_Lorenzo",
                                description: "와우, 당신은 로렌조 타입입니다!\n\n로렌조는 남모르게 CBL 과정들을 상세하게 기록해\n두어 팀원들이 놓친 부분을 알아챌 수 있도록 돕는\n역할을 합니다.아카데미에서 여러 분야의 사람들을 만나길 희망하\n며, 9개월 뒤의 자신이 어떤 모습으로 성장해 있을\n지 궁금해하고 있어요.개발 분야에서의 성장을 위해 누구보다 열심히, 차\n근차근 능력을 키워나가고 있답니다.",
                                wantToLearn: ["쏘니아의 탁월한 디자인 능력", "에릭의 집중력과 테크 실력", "가디와 제이의 통찰력과 커뮤니케이션 능력"],
                                strength: ["팀원이 놓친 부분을 캐치할 수 있는 능력", "맡은 일을 묵묵히 진행할 수 있는 끈기", "주도적으로 일을 찾아 해결하는 추진력"],
                                pointColor: Color.lorenzoPink,
                                summary: "핵심을 간파하는 날카로운 직관\n더 성장할 나를 발견해나가고 싶어\n끈기와 몰두로 다져진 조력자\nCBL은 아직 어려워~",
                                bio: "놓친 부분? 내가 다 해놨어",
                                previewMemoji: "previewLorenzo"),
                          
                          .init(title: "경험치 만랩 ",
                                name: "가디",
                                adaptability: 3,
                                hashtags: ["#CBL 어려워요", "#자존감 지킴이",
                                           "#걸어다니는 백과사전", "#탁! 길잡이"],
                                memoji: "Memoji_Guardy",
                                description: "아이고 이런, 가디 타입이시군요?\n\n가디는 ‘지식은 나누면 커진다'는 생각을 가지고 있\n으며 항상 다양한 배경지식을 가진 사람들과 소통하\n려고 노력합니다. 팀원 각자가 가진 고유한 강점들을 파악하고, 이러\n한 강점들이 팀 프로젝트 과정에서 시너지 효과를\n낼 수 있도록 항상 분석해요.\n\n하지만 집중력이 좋지 않은 편이라서 이를 붙잡아줄 주변의 누군가를 항상 필요로 해요.",
                                wantToLearn: ["제이의 원활한 커뮤니케이션", "에릭의 건강한 몰입", "로렌조의 핵심을 간파하는 직관"],
                                strength: ["항상 팀원들에게 조언을 아낌없이 해줘요", "사람을 관찰하는 능력이 뛰어나요", "팀 회의 중 방향성을 명확히 잡아줘요"],
                                pointColor: Color.guardyBlue,
                                summary: "아이디어는 거침없이 제시\n팀원의 강점을 캐치할 수 있는 능력\n다양한 배경지식 언제나 환영\n집중력을 붙잡아줄 사람이 필요해",
                                bio: "지식은 나누면 더욱 커지니까",
                                previewMemoji: "previewGuardy"),
]
