//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

struct TypeExampleView: View {
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
        VStack {
            GeometryReader {
                let size = $0.size
                
                HStack {
                    Spacer()
                    
                    Text("당신의 CBL\n유형은?")
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .offset(x: boolean.testClicked ? -size.width : 0)
                    
                    Spacer()
                }
            }
            .frame(height: 140)
            .padding(.vertical, 40)
            
            ForEach(types.indices, id: \.self) { index in
                GeometryReader {
                    let size = $0.size
                    
                    HStack {
                        Spacer()
                        
                        HStack {
                            Image(types[index].memoji)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: size.height / 1.5)
                                .padding()
                            
                            Spacer()
                        }
                        .frame(width: size.width / 1.2, height: size.height)
                        .background {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.gray.opacity(0.2))
                            
                        }
                        
                        Spacer()
                    }
                    .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.7, blendDuration: 0.1).delay(boolean.testClicked ? 0.1 : 0), value: boolean.testClicked)
                    .offset(x: boolean.testClicked ? -size.width : 0)
                }
            }
            
            ButtonView()
        }
    }
}
