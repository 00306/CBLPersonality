//
//  SwiftUIView.swift
//
//
//  Created by 장수민 on 2023/03/30.
//

import SwiftUI

struct Preview: View {
    
    @EnvironmentObject var boolean: Boolean
    @EnvironmentObject var resultViewModel: ResultViewModel
    @State private var isClicked = false
    
    let previewMember = types
    let whiteColor = Color.offWhite

    var body: some View {
        
        GeometryReader {
            let size = $0.size
            Color.backgroundBlack
                .ignoresSafeArea()
                .offset(y: 0)
            
            VStack {
                    Text("결과\n미리보기")
                                    .foregroundColor(whiteColor)
                                    .font(.system(size: 40))
                                    .foregroundColor(whiteColor).multilineTextAlignment(.leading).offset(x: -(size.width / 3.5) , y: size.width / 11)
                                    .padding(.leading, size.width / 16)
                                    .padding(.bottom, size.height / 6.5)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        ForEach(0..<5) { num in
                            ZStack {

                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: size.width / 1.5, height: size.height / 1.68)
                                    .foregroundColor(Color("Grayyyy"))
                                    .padding(.horizontal, size.width / 64)
                                    .shadow(radius: 15, x: 0, y: 5)
                                    
                                
                                VStack {
                                    VStack {  // CBL
                                        
                                        Text("CBL 적응력")
                                            .font(.system(size: 13, weight: .bold))
                                            .foregroundColor(whiteColor)
                                            .padding(.bottom, -2)
                                        
                                        ZStack(alignment: .leading) {
                                            HStack {
                                                ForEach(0..<5){ num in
                                                    Image("STAR")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: size.width / 32, alignment: .leading)
                                                        .padding(.leading, -3)
                                                }
                                            }
                                            
                                            HStack {
                                                ForEach(0..<previewMember[num].adaptability){ num in
                                                    Image("STAR.fill")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: size.width / 32, alignment: .leading)
                                                        .padding(.leading, -3)
                                                }
                                            }
                                        }
                                    }
                                    
                                    Image(previewMember[num].previewMemoji)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: size.width / 2.7)
                                        .padding(.bottom, size.height / 60)
                                        .padding(.top, 10)
                                    
                                    Text("\(previewMember[num].title)\(previewMember[num].name)")
                                        .font(.system(size: 16, weight: .bold))
                                        .padding(.horizontal, 15)
                                        .frame(height: 28, alignment: .leading)
                                        .background {
                                            Capsule()
                                            .fill(previewMember[num].pointColor)}
                                        .padding(.bottom, size.height / 60)
                                    
                                    Capsule()
                                        .fill(Color("Gray2222"))
                                        .frame(width: size.width /
                                               1.8 , height: 0.8)
                                    
                                    Text("\"\(previewMember[num].bio)\"")
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundColor(whiteColor)
                                        . padding(.top, size.height / 60)
                                        .padding(.bottom, size.height / 80)
                                    
                                    Text(previewMember[num].summary)
                                        .lineSpacing(2)
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 14))
                                        .foregroundColor(whiteColor)
                                        .padding(.bottom, size.height / 60)
                                        //.padding(.top, size.height / 52)

                                    
                                    
                                    
                                }
                                
                                
                                
                                
                                }
                            }
                        }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    }
                }
            }
        .opacity(boolean.otherTypes ? 1 : 0)
        }
    }

