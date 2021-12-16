import SwiftUI
import QuickLook
import ARKit
//import Quartz


struct ContentView: View {
    
    @State var documentUrl: URL?

    var body: some View {
        NavigationView {

        ZStack {
            
            Button("View file", action: {
                documentUrl = URL(fileURLWithPath: "somelocalfileURLPath")
            })
            
            
        }
        .navigationTitle("Open File")
        .quickLookPreview($documentUrl)
            
        }
        
    }

}


extension View {
    @ViewBuilder
    func defaultListStyle() -> some View {
        if #available(iOS 14, *) {
            listStyle(InsetGroupedListStyle())
        } else {
            listStyle(GroupedListStyle())
        }
    }
}
