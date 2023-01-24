import SwiftUI

#if DEBUG
  @_exported import Inject
#endif

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello, world!")
    }
    .padding()
    .onAppear {
      print("hello")
    }
    .enableInjection()
  }

  #if DEBUG
    @ObserveInjection var inject
  #endif
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
