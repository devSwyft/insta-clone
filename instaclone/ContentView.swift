import SwiftUI

struct ContentView: View {
    
    var body: some View {
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
        VStack{
            Spacer()
            HStack{
                TabView{
                    mainView()
                        .tabItem {
                            Image("home")
                        }
                    searchView()
                        .tabItem {
                            Image("search")
                        }
                    uplodeView()
                        .tabItem {
                            Image("uplode")
                        }
                    LillseView()
                        .tabItem {
                            Image("lillse")
                        }
                    profilView()
                        .tabItem{
                            Image("profil")
                        }
                }
            }
        }
        .padding()
        .navigationBarBackButtonHidden()
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

struct uplodeView: View{
    var body: some View{
        Text("uplodeView")
    }
}

struct LillseView: View {
    var body: some View{
        Text("lillseView")
    }
}

struct profilView: View {
    var body: some View {
        Text("profilView")
    }
}
#Preview {
    ContentView()
}
