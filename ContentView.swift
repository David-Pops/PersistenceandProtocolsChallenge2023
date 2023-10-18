import SwiftUI
import CoreLocation
import MapKit

struct ContentView: View {
    @State private var insetAmount = 50.0


    //MARK: Stretch #2 - Part II
    
    var coinsUS = [Coin(id: 1, nameCoin: "Penny"),
                   Coin(id: 5, nameCoin: "Nickel"),
                   Coin(id: 10, nameCoin: "Dime"),
                   Coin(id: 25, nameCoin: "Quarter")]
    
    
    var body: some View {
        HeaderView()
            
        Text("MVP Works")
        //MARK: MVP - Part II
            .modifier (ViewFourChangesModifier())
        
        
        
        //MARK: Stretch #1 - Part II
            Stretch1View()
        
            .frame(width: 300, height: 200)
           
        
            
            
            //MARK: Stretch #2 - Part III
            
       
        List {
            ForEach(coinsUS, id: \.id) { coin in
                Text("\(coin.nameCoin): \(coin.id)")
            }
        }
            
            
            //MARK: Stretch #3 - Part II
        Trapezoid(insetAmount: insetAmount)
                   .frame(width: 200, height: 100)
                   .onTapGesture {
                       insetAmount = Double.random(in: 10...90)
                   }
            Spacer()
            FooterView()
        }
    }

