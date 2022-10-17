//
//  SideMenuOptions.swift
//  Dropdown and slideover
//
//  Created by Abdul-Moeez on 16/10/2022.
//

import SwiftUI

struct SideMenuOptions : View {
    var body: some View {
        HStack(spacing : 16){
            Image(systemName: "person")
                .frame(width: 24,height: 24)
            
            Text("Profile")
                .font(.system(size: 15, weight : .semibold))
            
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuOptions_Previews : PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
