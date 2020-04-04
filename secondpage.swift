//
//  secondpage.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/21.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct secondpage: View {
    var body: some View {
       
        TabView{
            //MotoGPmusic()
            firstpage()
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("簡介")
                        
            }
            Riderslist()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("賽車手")
                        
            }
            Circuitslist()
                .tabItem {
                    Image(systemName: "globe")
                    Text("賽道")
                    
                }
                    
            }//.accentColor(.blue)
            .overlay(MotoGPmusic().offset(x:0,y:326),alignment: .center)
            
        }
    }
    
    struct secondpage_Previews: PreviewProvider {
        static var previews: some View {
            secondpage()
        }
}
