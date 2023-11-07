import SwiftUI

struct CatagoriesView: View {
    var body: some View {
        NavigationView {
            Text("Catagories").navigationTitle("Catagories")
        }.navigationViewStyle(.stack)
    }
}

struct CatagoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CatagoriesView()
    }
}
