

import SwiftUI

struct DetailView: View {
    
    
    var passedValue: String
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
       
        VStack {
            Image(systemName: "smiley.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.purple)
            
            Text("Wecome to DetailView! -> \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Go Back"){
                dismiss()
            }
            
            
            
        }
        .padding()
       
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
