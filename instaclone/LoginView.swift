//
//  LoginPage.swift
//  instaclone
//
//  Created by 박성민 on 9/30/23.
//

import SwiftUI

struct LoginView: View {
    @State private var name: String = ""
    @State private var passward: String = ""
    @State private var showPassward: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("instagram")
                    .resizable()
                    .frame(width: 230, height: 110)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                TextField("전화번호,사용자 이름 또는 이메일", text:$name)
                    .padding()
                    .background(Color(uiColor: .secondarySystemBackground))
                    .frame(width: 297,height: 50)
                    .border(.gray.opacity(0.1))
                HStack{
                    if showPassward{
                        TextField("비밀번호", text:$passward)
                            .padding()
                            .frame(width:230,height: 50)
                    }else{
                        SecureField("비밀번호", text:$passward)
                            .padding()
                            .frame(width:230,height: 50)
                    }
                    Button(action: {
                        self.showPassward.toggle()
                    }, label: {
                        Image(systemName: "eye.slash")
                            .padding()
                            .foregroundColor(.secondary)
                    })
                }
                .background(Color(uiColor: .secondarySystemBackground))
                .border(.gray.opacity(0.1))
                Button(action: {
                    print("아쉽네요")
                }
                       , label: {
                    Text("비밀번호를 잊으셨나요 ? ")
                        .font(.system(size: 14))
                        .padding([.leading],155)
                })
                NavigationLink{
                    ContentView()
                } label: {
                    Text("로그인")
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 300,height: 50)
                        .background(Color(red: 13/255, green: 160/255, blue: 255/255))
                        .cornerRadius(6)
                        .padding([.top,.bottom],20)
                }
                
                Divider()
                    .padding(.top,150)
                HStack{
                    Text("계정이 없으신가요 ?")
                        .font(.system(size: 15))
                        .foregroundStyle(.gray)
                    NavigationLink {
                        SignupVIew()
                    } label: {
                        Text("회원가입")
                    }
                        .foregroundColor(.black)
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    LoginView()
}
