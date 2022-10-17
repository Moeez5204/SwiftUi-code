

import SwiftUI


struct CustomColor{
    static let mycolor = Color("MYYELLOWCOLOR")
}

struct SideMenuView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green,Color.yellow]),
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
            
            
            
            
            VStack{
                SideMenuHeader()
                    .foregroundColor(CustomColor.mycolor)
                    .frame(height: 100)
                ForEach(0..<4) { _ in
                    SideMenuOptions()
                }
                    
                
                
                
            }
            .navigationBarHidden(true)
        }
      
        
        
    }
    
    
}


struct SideMenu_Previews :PreviewProvider {
    static var previews: some View{
        SideMenuView()
    
    }
}
            
            
