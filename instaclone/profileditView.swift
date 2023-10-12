//
//  profileditView.swift
//  instaclone
//
//  Created by 박성민 on 10/8/23.
//

import SwiftUI

struct profileditView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var name: String = "박성민"
    @State var ID: String = "ps_m07"
    @State var introduction: String = ""
    @State var viewchagne = 0
    @State var profilchange: Bool = false
    var body: some View {
        if viewchagne == 1{
            nameview()
        } 
        else if viewchagne == 2{
            idview()
        }
        else if viewchagne == 3{
            introductionview()
        }
        else {
            VStack{
                HStack{
                    Button{
                        self.presentationMode.wrappedValue.dismiss()
                    }label: {
                        Image("xmark")
                            .resizable()
                            .frame(width: 30,height: 40)
                            .padding(.leading,20)
                    }
                    Text("프로필 편집")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.black)
                        .padding(.leading,20)
                    Spacer()
                    Button{
                        self.presentationMode.wrappedValue.dismiss()
                        print("저장")
                    }label:{
                        Image("check")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 35)
                            .padding(.trailing,30)
                    }
                }
                Button{
                    profilchange.toggle()
                }label: {
                    Image("profil")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding(.top,30)
                        .sheet(isPresented: $profilchange){
                            Image("profil")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .padding(EdgeInsets(top: 40, leading: 0, bottom: 20, trailing: 0))
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.height(260)])
                                .cornerRadius(20)
                        Rectangle()
                            .fill(Color.black)
                            .frame(height: 1)
                            HStack{
                                Button{
                                    print("갤러리탭 열기")
                                }label: {
                                    Image("photo")
                                        .resizable()
                                        .frame(width: 25,height: 30)
                                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
                                }
                                Button{
                                    print("갤러리탭 열기")
                                }label: {
                                    Text("새로운 프로필 사진 ")
                                        .padding(.top,20)
                                        .foregroundColor(.black)
                                }
                                Spacer()
                            }
                            HStack{
                                Button{
                                    
                                }label: {
                                    Image("trash")
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
                                }
                                Button{
                                    
                                }label: {
                                    Text("현재 사진 삭제 ")
                                        .padding(.top,20)
                                        .foregroundColor(Color(red: 211/255, green: 15/255, blue: 15/255))
                                }
                                Spacer()
                            }
                            Spacer()
                        }
                }
                Button{
                    profilchange.toggle()
                }label: {
                    Text("사진 수정")
                        .fontWeight(.bold)
                        .padding(.top,30)
                        .font(.system(size: 21))
                        .foregroundColor(Color(red: 13/255, green: 160/255, blue: 255/255))
                        .sheet(isPresented: $profilchange){
                            Image("profil")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .padding(EdgeInsets(top: 40, leading: 0, bottom: 20, trailing: 0))
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.height(260)])
                                .cornerRadius(20)
                        Rectangle()
                            .fill(Color.black)
                            .frame(height: 1)
                            HStack{
                                Button{
                                    print("갤러리탭 열기")
                                }label: {
                                    Image("photo")
                                        .resizable()
                                        .frame(width: 25,height: 30)
                                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
                                }
                                Button{
                                    print("갤러리탭 열기")
                                }label: {
                                    Text("새로운 프로필 사진 ")
                                        .padding(.top,20)
                                        .foregroundColor(.black)
                                }
                                Spacer()
                            }
                            HStack{
                                Button{
                                    
                                }label: {
                                    Image("trash")
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
                                }
                                Button{
                                    
                                }label: {
                                    Text("현재 사진 삭제 ")
                                        .padding(.top,20)
                                        .foregroundColor(Color(red: 211/255, green: 15/255, blue: 15/255))
                                }
                                Spacer()
                            }
                            Spacer()
                        }
                }
                //이름
                VStack{
                    HStack{
                        Text("이름")
                            .padding(.leading,20)
                            .opacity(0.5)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    HStack{
                        Button{
                            print("이름뷰로 넘어감")
                            viewchagne = 1
                        }label: {
                            Text("\(name)")
                                .foregroundStyle(.black)
                                .padding(EdgeInsets(top: 1, leading: 20, bottom: 0, trailing: 0))
                                .font(.system(size: 23))
                                .fontWeight(.bold)
                        }
                        Spacer()
                    }
                    Divider()
                        .frame(width: 350)
                        .background(Color.gray)
                    //아이디뷰
                    HStack{
                        Text("사용자 이름")
                            .padding(.leading,20)
                            .opacity(0.5)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                            .padding(.top,30)
                    }
                    HStack{
                        Button{
                            print("아이디뷰로 넘어감")
                            viewchagne = 2
                        }label: {
                            Text("\(ID)")
                                .foregroundStyle(.black)
                                .padding(.leading,20)
                                .font(.system(size: 23))
                                .fontWeight(.bold)
                        }
                        Spacer()
                    }
                    Divider()
                        .frame(width: 350)
                        .background(Color.gray)
                    //소개뷰
                    HStack{
                        Text("소개")
                            .padding(.leading,20)
                            .opacity(0.5)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                            .padding(.top,30)
                    }
                    HStack{
                        Button{
                            viewchagne = 3
                            print("소개뷰로 넘어감")
                        }label: {
                            Text("\(introduction)")
                                .foregroundStyle(.black)
                                .padding(.leading,20)
                                .font(.system(size: 23))
                                .fontWeight(.bold)
                        }
                        Spacer()
                    }
                    Divider()
                        .frame(width: 350)
                        .background(Color.gray)
                }
            }
            Spacer()
        }

        }
    }

#Preview {
    profileditView()
}
