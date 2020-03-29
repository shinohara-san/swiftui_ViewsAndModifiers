import SwiftUI

struct ContentView: View {
    var body: some View {

         Text("Coronavirus sucks")
//        .modifier(Watermark())
         .selfMadeModifier()
    }
}

struct originalModifier: ViewModifier {
//    var text: String
    func body(content: Content) -> some View {
//        ZStack(alignment: .bottomTrailing) {
            content
                .font(.largeTitle)
                .foregroundColor(.yellow)
//        }
    }
}

extension View {
    func selfMadeModifier() -> some View {
        self.modifier(originalModifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
