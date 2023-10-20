import SwiftUI

struct RetrieveView: View {
    @State var number2: String = "Not Loaded Yet"
    @State var array: [Double] = []
    
    @State var name = ""
    @State var age = ""
    @State var phoneNumber = ""
    
    @AppStorage("url1") var url1: URL = URL(string: "www.apple.com")!
    @AppStorage("url2") var url2: URL = URL(string: "www.apple.com")!
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Group {
                TitleView(name: "MVP")
                HStack {
                    Text("Number1: ")
                    //TODO: MVP
                    Text("\(UserDefaults.standard.integer(forKey: "number1"))")
                }
                HStack {
                    Text("Number2: ")
                    Text("\(UserDefaults.standard.integer(forKey: "number2"))")
                }
            }
            
            Group {
                TitleView(name: "Stretch #1")
                
                Link("\(url1)", destination: URL(string: "https://\(url1)")!)
                Link("\(url2)", destination: URL(string: "https://\(url2)")!)
            }
            
            Group {
                //TitleView(name: "Stretch #2")
                ForEach(array, id: \.self) { value in
                    Text("\(value) ")
                }
            }
            
            Group {
                TitleView(name: "Stretch #3")
                HStack {
                    Text("Name: ")
                    Text(name)
                }
                
                HStack {
                    Text("Age: ")
                    Text(age)
                }
                
                HStack {
                    Text("Phone Number: ")
                    Text(phoneNumber)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .font(.title)
        .onAppear(perform: {
            array = (UserDefaults.standard.array(forKey: "arrayNumbers") ?? [0.0,0.0,0.0]) as! [Double]
            
            var contactInHere = contact(names: "John", ages: 25, phoneNumbers: "dwerwer")
            
            if let object = UserDefaults.standard.data(forKey: "contactInfo") {
                if let objectDecoded = try? JSONDecoder().decode(contact.self, from: object) as contact {
                    contactInHere = objectDecoded
                }
            } else {
                print("Decoding Failed")
            }
            name = contactInHere.names
            age = "\(contactInHere.ages)"
            phoneNumber = contactInHere.phoneNumbers
            
        })
    }
}


