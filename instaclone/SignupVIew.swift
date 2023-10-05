//
//  SignupVIew.swift
//  instaclone
//
//  Created by 박성민 on 9/30/23.
//

import SwiftUI

struct SignupVIew: View {
    @State private var Email: String = ""
    @State private var name: String = ""
    @State private var ID: String = ""
    @State private var passward: String = ""
    var body: some View {
        NavigationStack{
        VStack{
            Spacer()
            Image("instagram")
                .resizable()
                .frame(width: 230, height: 110)
            Text("친구들의 사진과 동영상을 보려면")
                .font(.system(size: 21))
                .foregroundStyle(.gray)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text("가입하세요.")
                .font(.system(size: 21))
                .foregroundStyle(.gray)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            TextField("휴대폰 번호 또는 이메일 주소",text: $Email)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .frame(width: 300,height: 55)
                .border(.gray.opacity(0.2))
            TextField("성명",text:$name)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .frame(width: 300,height: 55)
                .border(.gray.opacity(0.2))
            TextField("사용자 이름", text:$ID)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .frame(width: 300,height: 55)
                .border(.gray.opacity(0.2))
            SecureField("비밀번호", text:$passward)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .frame(width: 300,height: 55)
                .border(.gray.opacity(0.2))
            Button(action: {
                print("회원가입")
            }
                , label: {
                Text("가입")
                    .padding()
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 300,height: 40)
                    .background(Color(red: 13/255, green: 160/255, blue: 255/255))
                    .cornerRadius(6)
            })
            Text("가입하면 Instagram의 약관,데이터")
                .padding(.top)
                .font(.system(size: 15))
                .foregroundStyle(.gray)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text("정책 및 쿠키 정책에 동의하게 됩니디.")
                .font(.system(size: 15))
                .foregroundStyle(.gray)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom,80)
        }
        
        Divider()
            HStack{
                Text("계정이 있으신가요 ? ")
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("로그인")
                    }

                }
            }
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    SignupVIew()
}
