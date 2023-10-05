import SwiftUI
 
struct SwiftUIView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(.secondary)
                    TextField("아이디", text: $username)
                        .disableAutocorrection(true)
                }
                .padding()
                .background(Capsule().fill(Color.white))
                
                HStack {
                 Image(systemName: "lock")
                        .foregroundColor(.secondary)
                    if showPassword {
                        TextField("비밀번호", text: $password)
                    } else {
                        SecureField("비밀번호", text: $password)
                    }
                    Button(action: {
                        self.showPassword.toggle()
                    }, label: {
                        Image(systemName: "eye.slash")
                            .foregroundColor(.secondary)
                    })
                }
                .padding()
                .background(Capsule().fill(Color.white))
            }
            .padding()
            
        }
    }
}
 
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
