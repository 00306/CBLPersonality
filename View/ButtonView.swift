//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

struct ButtonView: View {
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    ZStack {
                        Text("→ 다음")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: size.width / 1.2, height: size.height / 1.2)
                            .background {
                                Capsule()
                                    .stroke(.gray, lineWidth: 3)
                            }
                            .opacity(boolean.testStart ? 1 : 0)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 1, blendDuration: 0.2)) {
                                    boolean.testStart.toggle()
                                }
                            }
                        
                        Text("테스트 시작")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: size.width / 1.2, height: size.height / 1.2)
                            .background {
                                Capsule()
                                    .stroke(.gray, lineWidth: 3)
                            }
                            .opacity(boolean.testClicked ? 1 : 0)
                            .opacity(boolean.testStart ? 0 : 1)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 1, blendDuration: 0.2)) {
                                    boolean.testStart.toggle()
                                }
                            }
                        
                        Text("→ 알아보러 가기")
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: size.width / 1.2, height: size.height / 1.2)
                            .background {
                                    Capsule()
                                        .stroke(.gray, lineWidth: 3)
                            }
                            .opacity(boolean.testClicked ? 0 : 1)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 1, blendDuration: 0.2)) {
                                    boolean.testClicked.toggle()
                                }
                            }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}
