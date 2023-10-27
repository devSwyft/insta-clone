import SwiftUI

struct ContentView: View {
    @State var nav = 5
    
    var body: some View {
        NavigationStack{
            if (nav == 1) {
                HStack {
                    Image("instagram")
                        .resizable()
                        .frame(width: 130,height: 60)
                        .padding()
                    Spacer()
                    Image("heart")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding()
                    Image("airplane")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding()
                }
            }
            
            
            VStack{
                Spacer()
                HStack{
                    TabView(selection: $nav) {
                        mainView()
                            .tabItem {
                                Image("home")
                            }
                            .tag(1)
                        searchView()
                            .tabItem {
                                Image("search")
                            }
                            .tag(2)
                        uplodeView()
                            .tabItem {
                                Image("uplode")
                            }
                            .tag(3)
                        LillseView()
                            .tabItem {
                                Image("lillse")
                            }
                            .tag(4)
                        profilView()
                            .tabItem{
                                Image("profil")
                            }
                            .tag(5)
                    }
                }
            }
            .padding()
            .navigationBarBackButtonHidden()
        }
    }
}

struct mainView: View {
    var body: some View {
        Text("mainView")
    }
}

struct searchView: View {
    var body: some View {
        Text("searchView")
    }
}

struct EmptyView: View{
    var body: some View{
        Text("")
    }
}

struct uplodeView: View{
    @State private var isActive = false
    var body: some View{
                   VStack {
                       Text("Upload View")
                       NavigationLink(destination: inuplodeView(), isActive: $isActive) { EmptyView() }
                   }
                   .onAppear { self.isActive = true }
    }
}

struct LillseView: View {
    var body: some View{
        Text("lillseView")
    }
}

struct profilView: View {
    @State var editprofil:Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("ps_m07")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding(.leading,10)
                Spacer()
                Image("uplode")
                Image("menu")
                    .resizable()
                    .frame(width: 25,height: 30)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 15))

            }
            HStack{
                Image("profil")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .padding(EdgeInsets(top: 15, leading: 20, bottom: 0, trailing: 20))
                Spacer()
                VStack{
                    Text("0")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 20))
                    Text("게시물")
                }
                Spacer()
                VStack{
                    Text("0")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 20))
                    Text("팔로워")
                }
                Spacer()
                VStack{
                    Text("0")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 20))
                    Text("팔로우")
                }
                Spacer()
            }
            Text("박성민")
                .padding(.trailing,300)
                .fontWeight(.bold)
                .font(.system(size: 19))
            HStack{
                Button{
                    self.editprofil.toggle()
                }label: {
                    Text("프로필 편집")
                        .padding()
                        .frame(width: 170,height: 40)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .background(Color(uiColor: .gray).opacity(0.2))
                        .cornerRadius(10)
                        .fullScreenCover(isPresented: $editprofil){
                            profileditView()
                        }
                }
                Button{
                    print("프로필공유")
                }label: {
                    Text("프로필 공유")
                        .padding()
                        .frame(width: 170,height: 40)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .background(Color(uiColor: .gray).opacity(0.2))
                        .cornerRadius(10)
                }
            }

                Spacer()
        }
    }
}
#Preview {
    ContentView()
    
}
