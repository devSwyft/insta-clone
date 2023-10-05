swiftCopy code
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the Detail View")
    }
}
