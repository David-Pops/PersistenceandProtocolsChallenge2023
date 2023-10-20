import SwiftUI

struct SaveView: View {
    
    @State var number1: Int?
    @State var number2: Int?
    
    @State var url1: URL?
    @State var url2: URL?
    
    @State var arrayNumber1: Double?
    @State var arrayNumber2: Double?
    @State var arrayNumber3: Double?
    
    @State var name: String = ""
    @State var age: Int?
    @State var phone: String = ""
    
    
    var body: some View {
        VStack {
            Group {
                
                TitleView(name: "MVP")
                HStack {
                    
                    TextField("Integer #1", value: $number1, format: .number)
                    
                    TextField("Integer #2", value: $number2, format: .number)
                }
                .textFieldStyle(.roundedBorder)
                Button("Save") {
                    
                    UserDefaults.standard.set(number1, forKey: "number1")
                    UserDefaults.standard.set(number2, forKey: "number2")
                    
                    UserDefaults.standard.set(url1, forKey: "url1")
                    UserDefaults.standard.set(url2, forKey: "url2")
                    
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            
            Group {
                TitleView(name: "Stretch #1")
                VStack {
                    
                    TextField("Enter URL #1", text: Binding(
                        get: { url1?.absoluteString ?? "" },
                        set: { url1 = URL(string: $0) }
                        
                    ))
                    TextField("Enter URL #2", text: Binding(
                        get: { url2?.absoluteString ?? "" },
                        set: { url2 = URL(string: $0) }
                    ))
                    
                }
                .autocorrectionDisabled(true)
                .textFieldStyle(.roundedBorder)
                Button("Save") {
                    
                    UserDefaults.standard.set(url1, forKey: "url1")
                    UserDefaults.standard.set(url2, forKey: "url2")
                    
                    
                    
                    
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            
            Group {
                TitleView(name: "Stretch #2")
                VStack {
                    HStack {
                        TextField("#1", value: $arrayNumber1, format: .number)
                        TextField("#2", value: $arrayNumber2, format: .number)
                        TextField("#3", value: $arrayNumber3, format: .number)
                    }
                }
                .textFieldStyle(.roundedBorder)
                
                Button("Save") {
                    UserDefaults.standard.set([arrayNumber1!, arrayNumber2!, arrayNumber3!], forKey: "arrayNumbers")
                    
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            //Spacer(minLength: 100)
            Group {
                TitleView(name: "Stretch #3")
                VStack {
                    TextField("Enter Name", text: $name)
                    TextField("Enter Age", value: $age, format: .number)
                    TextField("Enter Phone", text: $phone)
                }
                .textFieldStyle(.roundedBorder)
                Button("Save") {
                    let t = contact(names: name, ages: age!, phoneNumbers: phone)
                    
                    if let encoded = try? JSONEncoder().encode(t){
                    UserDefaults.standard.set(encoded, forKey: "contactInfo")
                    } else {
                    print("Encoding Failed")
                    }
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            Spacer(minLength: 100)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}


