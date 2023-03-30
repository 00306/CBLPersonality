//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var boolean: Boolean
    @EnvironmentObject var resultViewModel: ResultViewModel
    let typeDescription = types
    let resultMember = ResultViewModel().memberType
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            Color.backgroundBlack
                .ignoresSafeArea()
                .offset(y: 0)
            
            let whitecolor = Color("AppWhite")
            let membercolor = typeDescription[1].pointColor

            ScrollView{
                VStack {
                    ZStack{  // 유형 + 미모지
                        Text(typeDescription[1].title).font(.system(size: 40)).foregroundColor(whitecolor).multilineTextAlignment(.leading).offset(x: -(size.width / 3.5) , y: -(size.height / 80))

                        Image(typeDescription[1].memoji).resizable().aspectRatio(contentMode:.fit).frame(width: 180).offset(x: size.width / 8, y: 100)
                        
                    }.padding(.bottom, size.height / 5)
                    
                    VStack(alignment: .leading){  // 해시태그
                        HStack{
                            Text(typeDescription[1].hashtags[0])
                                .font(.system(size: 18))
                                .padding(.horizontal, 10)
                                .frame(height: 32, alignment: .leading)
                                .background {
                                    Capsule()
                                    .fill(membercolor)}
                            Text(typeDescription[1].hashtags[1])
                                .font(.system(size: 18))
                                .padding(.horizontal, 10)
                                .frame(height: 32, alignment: .leading)
                                .background {
                                    Capsule()
                                    .fill(membercolor)}
                        }.padding(.leading, size.width / 32.5)
                        HStack{
                            Text(typeDescription[1].hashtags[2])
                                .font(.system(size: 18))
                                .padding(.horizontal, 10)
                                .frame(height: 32, alignment: .leading)
                                .background {
                                    Capsule()
                                    .fill(membercolor)}
                            Text(typeDescription[1].hashtags[3])
                                .font(.system(size: 18))
                                .padding(.horizontal, 10)
                                .frame(height: 32, alignment: .leading)
                                .background {
                                    Capsule()
                                    .fill(membercolor)}
                        }.padding(.leading, size.width / 32.5)
                        HStack{  // 적응력
                            Text("CBL 적응력").foregroundColor(whitecolor).font(.system(size: 16, weight: .bold)).frame(alignment: .leading).padding(.leading, size.width / 26)
                            
                            ZStack{
                                HStack{
                                    ForEach(0..<5){ num in
                                        Image("STAR")
                                            .resizable().aspectRatio(contentMode: .fit).frame(width: size.width / 24)
                                    }
                                }.frame(width: 100, height: 100, alignment:.leading)
                                HStack{
                                    ForEach(0..<typeDescription[1].adaptability){ num in
                                        Image("STAR.fill")
                                            .resizable().aspectRatio(contentMode: .fit).frame(width: size.width / 24)
                                    }
                                }.frame(width: 100, height: 100, alignment: .leading).padding(.bottom, 2)
                                
                            }.padding(.leading, size.width / 35.4)
                            
                            
                        }.padding(.bottom, -20)
                        Text(typeDescription[1].description).lineSpacing(1.8).foregroundColor(whitecolor).font(.system(size: 16)).padding(.bottom, size.height / 14).padding(.trailing, size.width / 11).padding(.leading, size.width / 32.5) // 내용
                        
                        VStack(alignment: .leading){ // 이런 점을 배우고 싶어요
                            Text("\(typeDescription[1].name)는(은) 이런 점을 배우고 싶어요").foregroundColor(whitecolor).font(.system(size: 18, weight: .bold)).padding(.leading, size.width /
                                                                                                                                        32.5)
                            ZStack{
                                RoundedRectangle(cornerRadius: 22).foregroundColor(Color("Grayyyy"))
                                Text(typeDescription[1].want).lineSpacing(1.8).font(.system(size: 16)).frame(width: 300, alignment: .leading).padding(.vertical,20).foregroundColor(whitecolor).padding(.leading, 4)
                            }
                        }.padding(.bottom, size.height / 25).padding(.trailing, size.width / 16)
                        
                        VStack(alignment: .leading){  // 이런 장점이 있어요
                            Text("\(typeDescription[1].name)는(은) 이런 장점이 있어요").foregroundColor(whitecolor).font(.system(size: 18, weight: .bold)).padding(.leading, size.width / 32.5)
                            ZStack{
                                RoundedRectangle(cornerRadius: 22)
                                .foregroundColor(Color("Grayyyy"))
                                Text(typeDescription[1].strength).lineSpacing(1.8).font(.system(size: 16)).frame(width: 300, alignment: .leading).padding(.vertical, 20).foregroundColor(whitecolor).padding(.leading, 4)
                                
                            }
                        }.padding(.bottom, size.height / 19).padding(.trailing, size.width / 16)
                        
                        HStack(spacing: size.width / 24){  // 다시하기 공유하기
                            
                            Text("테스트 다시하기").font(.system(size: 18)).foregroundColor(whitecolor).padding(.horizontal, 20).padding(.vertical, 15).background {
                                RoundedRectangle(cornerRadius: 16)
                                    .foregroundColor(.backgroundBlack)
                                    .background {
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(.white, lineWidth: 1.5)
                                    }
                            }
                            
                            Text("테스트 공유하기").font(.system(size: 18)).padding(.horizontal, 20).padding(.vertical, 15).foregroundColor(.backgroundBlack).background {
                                RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(whitecolor)                        }
                            
                        }.padding(.trailing, size.width / 16).padding(.leading, size.width / 75)
                        
                    }
                }
                .padding(.leading, size.width / 16) //.padding(.trailing, size.width / 11)
            }
        }
            
            
            
            
            
            //            ZStack {
            //                HStack {
            //                    Spacer()
            //
            //                    VStack {
            //                        Text("당신의 CBL 유형은?")
            //                            .font(.system(size: 20, weight: .bold, design: .rounded))
            //                            .foregroundColor(.black)
            //                            .padding(.top, 60)
            //                            .opacity(boolean.resultPage ? 1 : 0)
            //                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(1), value: boolean.resultPage)
            //
            //
            //                        Text(resultViewModel.memberType.name)
            //                            .font(.system(size: 40, weight: .bold, design: .rounded))
            //                            .foregroundColor(.black)
            //                            .padding()
            //                            .opacity(boolean.resultPage ? 1 : 0)
            //                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2), value: boolean.resultPage)
            //
            //                        Image(resultViewModel.memberType.memoji)
            //                            .resizable()
            //                            .aspectRatio(contentMode: .fit)
            //                            .opacity(boolean.resultPage ? 1 : 0)
            //                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2), value: boolean.resultPage)
            //                            .frame(width: size.width / 2)
            //
            //                        ZStack{
            //                                       HStack{
            //                                           ForEach(0..<5){ num in
            //                                               Image(systemName: "star")
            //                                           }
            //                                       }.frame(width: 100, height: 100, alignment:.leading)
            //                                       HStack{
            //                                           ForEach(0..<4){ num in
            //                                                   Image(systemName: "star.fill")
            //                                               }
            //                                       }.frame(width: 100, height: 100, alignment: .leading)
            //
            //                                       }
            //                            .opacity(boolean.resultPage ? 1 : 0)
            //                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2.3), value: boolean.resultPage)
            //
            //                        Text(resultViewModel.memberType.hashtags.description)
            //                            .font(.system(size: 14, weight: .bold, design: .rounded))
            //                            .opacity(boolean.resultPage ? 1 : 0)
            //                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2.3), value: boolean.resultPage)
            //
            //                        RoundedRectangle(cornerRadius: 24)
            //                            .foregroundColor(.gray.opacity(0.2))
            //                            .opacity(boolean.resultPage ? 1 : 0)
            //                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2.3), value: boolean.resultPage)
            //                    }
            //
            //                    Spacer()
            //                }
            //            }
            
        }
        
    }

