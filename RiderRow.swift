//
//  RiderRow.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/22.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct RiderRow: View {
    
    let Riders:Riders
    var body: some View {
        HStack{
            Image(Riders.Name)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color(hue: 0.987, saturation: 0.687, brightness: 0.99),lineWidth: 4))
                .shadow(radius: 10)
            VStack(alignment:.leading){
                Text(Riders.Name)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.981, brightness: 0.826))
                Text("      ＊車號：\(Riders.Bikenumber)＊")
                    .font(.headline)
                    .fontWeight(.heavy)
                    
            }
            Spacer()
            }.padding(10).background(Image("motoGP").resizable().scaledToFill().opacity(0.3)).clipped()
    }
}

struct RiderRow_Previews: PreviewProvider {
    static var previews: some View {
        RiderRow(Riders:Riders( Name:"Valentino Rossi-瓦倫蒂諾·羅西",Bikenumber:"46",Championships:"",Team:"",Manufacturers: "",Age: "",Nationality: "",Activeyears: "",Introduction: "")).previewLayout(.fixed(width:300,height:70))
    }
}
