//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

struct NoticeView: View {
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            VStack {
                HStack {
                    Text("유의사항")
                    
                    Spacer()
                }
                .padding()
                .font(.system(size: 35, weight: .bold, design: .rounded))
                .multilineTextAlignment(.center)
                .offset(x: boolean.testClicked ? 0 : size.width)
                
                HStack {
                    Spacer()
                        
                        Text("• 팩폭이 포함되어있어 순살이 될 수 있습니다.\n• 거짓없이 답변해주세요 결과의 신뢰성을 상승\n• 성실하게 밝게 자신있게\n• 여기까지 읽고 있넹\n• 큰 의미없는거니까\n• 밑에 있는 버튼을 누르고 테스트를 시작해주세요.\n• 그럼 20000\n")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .padding()
                            .frame(width: size.width / 1.1, height: size.height / 1.3)
                            .background {
                                RoundedRectangle(cornerRadius: 24)
                                    .fill(.gray.opacity(0.2))
                            }
                            .offset(x: boolean.testClicked ? 0 : size.width)
                            .offset(x: boolean.testStart ? -size.width : 0)
                    
                    Spacer()
                }
                .animation(.interactiveSpring(response: 0.7, dampingFraction: 1, blendDuration: 0.1).delay(boolean.testClicked ? 0.1 : 0), value: boolean.testClicked)
            }
        }
    }
}
