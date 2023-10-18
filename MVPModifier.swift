import SwiftUI

//MARK: MVP - Part I

struct ViewFourChangesModifier: ViewModifier {
    func body(content: Content) -> some View{
        Text("MVP Works")
        .font(.headline)
        .foregroundColor(.red)
        .frame(height: 55)
        .background(.blue)
        .cornerRadius(20)
        }
    
}





