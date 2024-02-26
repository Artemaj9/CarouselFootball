//
//  CarouselFootball
//

import SwiftUI

struct ContentView: View {
    @State var textfield_val = ""
    @State var heartFilled = false
    
    var body: some View {
        CarouselView(itemHeight: 500, views: [
            AnyView(Circle().frame(width: 50, height: 50).foregroundColor(.red)),
            AnyView(Text("b")),
            AnyView(TextField("placeholder", text: $textfield_val).padding().multilineTextAlignment(.center)),
            AnyView(
                VStack {
                    if heartFilled {
                        Image(systemName: "heart")
                    } else {
                        Image(systemName: "heart.fill")
                    }
                }
            ),
            AnyView(Text("the textfield said '\(textfield_val == "" ? "..." : textfield_val)'")),
            AnyView(
                Button(action: {self.heartFilled.toggle()}) {
                    Text("Fill the heart")
                }
            ),
            AnyView(Text("Last View")),
            AnyView(Text("Last View")),
            AnyView(Text("Last View"))
            ])
    }
}

#Preview {
    ContentView()
}
