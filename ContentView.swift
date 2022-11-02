import SwiftUI

var PrimaryColor = Color(.white)
var SecoundaryColor = Color(.white)
var weather = "sunny"


func backgroundViewPrime() -> (Color)
{
    if weather == "winter"
    {
        PrimaryColor = Color(.white)
    }
    if weather == "sunny"
    {
        PrimaryColor = Color(.orange)
    }
    if weather == "windy"
    {
        PrimaryColor = Color(.lightGray)
    }
    return PrimaryColor
   
}
func backgroundViewSecoundary() -> (Color)
{
    if weather == "winter"
    {
        SecoundaryColor = Color(.blue)
    }
    if weather == "sunny"
    {
        SecoundaryColor = Color(.yellow)
    }
    if weather == "windy"
    {
        SecoundaryColor = Color(.systemOrange)
    }
    return SecoundaryColor
}


struct ContentView : View {
    
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather : ResponseBody?

    
    var thing = 70
    var body: some View {
        ZStack{
            
            
                if let location =  locationManager {
                    if let weather = weather {
                        WeatherManager(weather : weather)
                    }
                
            }
            
            LinearGradient(gradient: Gradient(colors: [backgroundViewPrime(),backgroundViewSecoundary()]),
                 startPoint: .top, // gradient background
                 endPoint: .bottom)
                        .ignoresSafeArea() //full area
            
            VStack(){
                
                Text(weather.main) // main menu table
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
