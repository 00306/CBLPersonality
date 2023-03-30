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
        ZStack {
            GeometryReader {
                let size = $0.size
                
                Color.backgroundBlack
                    .ignoresSafeArea()
                    .statusBarStyle(.lightContent)

                VStack(spacing: 0) {
                    HStack(alignment: .top) {
                        VStack(alignment :.leading) {
                        ZStack {
                            HStack {
                                Text("당신의")
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("Challenge")
                                    .offset(y: size.height / 17.5)
                                
                                Spacer()
                            }
                            HStack {
                                Text("Based")
                                    .offset(y: size.height / 9)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("Learning")
                                    .offset(y: size.height / 6)
                                
                                Spacer()
                            }
                            
                            
                            HStack {
                                Text("유형은?")
                                    .offset(y: size.height / 4.45)
                                
                                Spacer()
                            }
                        }
                        .font(.custom("AppleSDGothicNeo", size: 40))
                        .foregroundColor(.offWhite)
                        .offset(x: boolean.firstClicked ? -size.width : 0)
                        .opacity(boolean.firstClicked ? 0 : 1)
                            
                            Spacer()
                    }

                        Spacer()
                    }
                    .frame(height: size.height / 3.7)
                    .padding(.top, size.height / 13.6)
                    .padding(.bottom, size.height / 10)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: -5) {
                            ForEach(types.indices, id: \.self) { index in
                                HStack(alignment: .center, spacing: -20) {
                                    Image(types[index].memoji)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .zIndex(1)
                                        .frame(width: 60)
                                    
                                    HStack(spacing: 0) {
                                    Text(types[index].title)
                                        .font(.system(size: 24, weight: .bold))
                                        Text(types[index].name)
                                            .font(.system(size: 24, weight: .bold))
                                        
                                        
                                }
                                    .padding(.vertical, size.height / 120)
                                    .padding(.horizontal, size.width / 23)
                                    .background {
                                        Capsule()
                                            .fill(types[index].pointColor)
                                    }
                                }
                                .padding(.leading, -15)
                                .offset(x: boolean.firstClicked ? -size.width : 0)
                                .opacity(boolean.firstClicked ? 0 : 1)
                            }
                        }
                        
                        Spacer()
                    }
                    
                }
                .padding(.bottom, size.height / 6)
                .padding(.leading, size.width / 10.5)
            }
            
        }
    }
}
