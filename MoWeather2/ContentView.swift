import SwiftUI

struct ContentView : View {
    
    //weather variabels/////////////
    var SnowTop = Color(.blue)
    var SnowBottom = Color(.blue)
    
    var SunnyTop = Color(.blue)
    var SunnyBottom = Color(.blue)
    
    var WindyTop = Color(.blue)
    var WindyBottom = Color(.blue)
    
    var HailSnow = Color(.blue)
    var HailBottom = Color(.blue)
    
    func ChooseColor() -> Color{
        if weather == "snow"{
            return Color(.white)
        }
          
    }
    
    //Weather Variables//////////////
    
    var thing = 70
    var PrimaryColor = Color(.white)
    var SecoundaryColor = Color(.systemBlue)
    var weather:String
   
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [PrimaryColor,SecoundaryColor]),
                 startPoint: .top, // gradient background
                 endPoint: .bottom)
                        .ignoresSafeArea() //full area
            
            VStack(){
                
                Text("TABLE1") // main menu table
                    .scaledToFill()
                    .frame(width: 350,height: 250)
                    .border(Color(.blue))
                    .cornerRadius(15)
                    
                Spacer()
                VStack{
                    Text("Table2  TEX24 \(thing)") // other days tables
                        .scaledToFill()
                        .frame(width: 350,height: 75)
                        .border(Color(.blue))
                    Text("Table2  TEX24")
                        .scaledToFill()
                        .frame(width: 350,height: 75)
                        .border(Color(.blue))
                    Text("Table2  TEX24")
                        .scaledToFill()
                        .frame(width: 350,height: 75)
                        .border(Color(.blue))
                    Text("Table2  TEX24")
                        .scaledToFill()
                        .frame(width: 350,height: 75)
                        .border(Color(.blue))
                    Text("Table2  TEX24")
                        .scaledToFill()
                        .frame(width: 350,height: 75)
                        .border(Color(.blue))
                    Text("Table2  TEX24")
                        .scaledToFill()
                        .frame(width: 350,height: 75)
                        .border(Color(.blue))
                    Text("Table2  TEX24")
                        .scaledToFill()
                        .frame(width: 350,height: 75)
                        .border(Color(.blue))
     
                }

            }
        }
        
    }
}


    



struct ContentView_Previews :PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
