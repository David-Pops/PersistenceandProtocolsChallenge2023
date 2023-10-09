import SwiftUI

struct ContentView: View {
    //MARK: Stretch #2 - Part II
    
    
    
    
    var body: some View {
        HeaderView()
        Spacer()
        Text("MVP Works")
        //MARK: MVP - Part II
            
        
        
        
        
        //MARK: Stretch #1 - Part II
        
        
        
        
        
        //MARK: Stretch #2 - Part III
        
        
        
        
        
        //MARK: Stretch #3 - Part II
       
        
        
        
        
        HeaderView()
        
        
        NavigationStack {
            Text("User Defaults")
                .font(.largeTitle)
            HStack(spacing: 50) {
                NavigationLink { 
                    SaveView()
                } label: { 
                    VStack {
                        Image(systemName: "square.and.arrow.down.fill")
                            .font(.system(size: 100))
                        Text("In")
                            .font(.largeTitle)
                    }
                }

                NavigationLink { 
                    RetrieveView()
                } label: { 
                    VStack {
                        Image(systemName: "square.and.arrow.up.fill")
                            .font(.system(size: 100))
                        Text("Out")
                            .font(.largeTitle)
                    }
                }
            }
        }
        .foregroundColor(.blue)
        FooterView()
    }
}
