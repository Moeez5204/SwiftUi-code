//
//  SideMenuHeader.swift
//  Dropdown and slideover
//
//  Created by Abdul-Moeez on 13/10/2022.
//

import SwiftUI

struct SideMenuHeader : View {
    

    var body: some View {
        ZStack(alignment: .top) {
            
            Button(action: {
               something()
                    .offset(
                        x : -300,
                        y : -40)
                
                
                
                
            },   label: {
                Image(systemName: "xmark")
                    .frame( width: 32 , height: 32)
                    .foregroundColor(.black)
                    .padding()
            })
            
            VStack(alignment : .leading) {
                Image("Unknown")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width : 64 , height: 64)
                    .clipShape(Circle())
                    .padding(.bottom,16)
                    .padding()
                
                Text("Abdul-Moeez")
                    .font(.system(size: 24, weight: .semibold))
                    .padding()
                
                
                Text("@A.Moeez5204")
                    .font(.system(size: 14, weight: .semibold))
                    .padding()
                
                
                HStack(spacing :12) {
                    HStack(spacing:4) {
                        Text("1234").bold()
                        Text("following")
                        
                        HStack(spacing :5){
                            Text("Private").bold()
                            Text("followers")
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                .padding()
                
                
                
                
                
                
                
                
                Spacer()
            }
            Spacer()
        }
    }
    
    struct something : View {
        var body: some View {
            ZStack{
                Color(.white)
                
                Image(systemName: "xmark")
                    .padding()
            }

        }
    }
    
    
    
    struct SideMenuHeade_Previews : PreviewProvider {
        static var previews: some View {
            SideMenuHeader()
        }
        
    }
}
