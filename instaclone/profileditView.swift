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
    var body: some View {
        VStack{
            HStack{
                Button{
                    self.presentationMode.wrappedValue.dismiss()
                }label: {
                    Image("xmark")
                        .resizable()
                        .frame(width: 35,height: 45)
                        .padding(.leading,20)
                }
                Text("프로필 편집")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.black)
                    .padding(.leading,30)
                Spacer()
                Button{
                    self.presentationMode.wrappedValue.dismiss()
                    print("저장")
                }label:{
                    Image("check")
                        .resizable()
                        .frame(width: 35, height: 45)
                        .padding(.trailing,30)
                }
            }
            Button{
                print("프로필 수정")
            }label: {
                Image("profil")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .padding(.top,30)
            }
            Button{
                print("프로필 수정")
            }label: {
                Text("사진 수정")
                    .fontWeight(.bold)
                    .padding(.top,30)
                    .font(.system(size: 21))
                    .foregroundColor(Color(red: 13/255, green: 160/255, blue: 255/255))
            }
            VStack{
                HStack{
                    Text("이름")
                        .padding(.leading,20)
                        .opacity(0.5)
                        .fontWeight(.bold)
                    Spacer()
                }
                HStack{
                    Button{
                        print("이름 뷰 체인지")
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
                HStack{
                    Text("사용자 이름")
                        .padding(.leading,20)
                        .opacity(0.5)
                        .fontWeight(.bold)
                    Spacer()
                        .padding(.top,30)
                }
                HStack{
                    Button{
                        print("아이디 뷰 체인지")
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
                HStack{
                    Text("소개")
                        .padding(.leading,20)
                        .opacity(0.5)
                        .fontWeight(.bold)
                    Spacer()
                        .padding(.top,30)
                }
                HStack{
                    Button{
                        print("소개 뷰 체인지")
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
                HStack{
                    Text("소개")
                        .padding(.leading,20)
                        .opacity(0.5)
                        .fontWeight(.bold)
                    Spacer()
                        .padding(.top,30)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    profileditView()
}
