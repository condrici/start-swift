import SwiftUI

struct Option: Hashable {
    let title: String
    let imageName: String
}

struct ContentView: View {
    let options: [Option] = [
        .init(title: "Stocks", imageName: "house"),
    ]
    
    var body: some View {
        NavigationView {
            ListView(options: options)
            
            MainView()
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}

struct ListView: View {
    let options: [Option]
    
    var body: some View {
        VStack {
            ForEach(options, id: \.self) { option in
                HStack {
                    Image (systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    
                    Text(option.title)
                    
                    Spacer()
                }
                .padding(10)
            }
            
            Spacer()
        }
    }
}

struct MainView: View {
    var body: some View {
        Text("List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
