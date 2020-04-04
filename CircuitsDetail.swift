//
//  CircuitsDetail.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/31.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct CircuitsDetail: View {
 let circuits:CircuitData
    var body: some View {
        ScrollView{
            VStack{
                Group{
                    CircuitImage(circuitdata:circuits)
                    
                    Text(circuits.GPName)
                    Text("賽道名稱：\n\(circuits.circuitName)\n").font(.custom("MarkerFelt-Wide",size:20))
                        .background(Color(hue: 0.564, saturation: 1.0, brightness: 1.0))
                    .cornerRadius(15)
                    Text("MotoGP單圈最快紀錄(分/秒):\n \(circuits.Fastlaptimes)\n").font(.custom("MarkerFelt-Wide",size:18)).background(Color(hue: 0.396, saturation: 0.953, brightness: 0.739))
                    .cornerRadius(10)
                    
                }
                Text("介紹：\n\(circuits.Introduction)")
                    .foregroundColor(Color.black)
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width:350)
                    .padding()
                    .font(.custom("MarkerFelt-Wide",size:18))
                    .background(Color(hue: 0.101, saturation: 0.81, brightness: 0.96))
                    .cornerRadius(50)
                
            }
            .navigationBarTitle(circuits.GPName)
        }
    }
}

struct CircuitsDetail_Previews: PreviewProvider {
    static var previews: some View {
        CircuitsDetail(circuits:Circuit[0])
    }
}


struct CircuitImage: View {
    let circuitdata:CircuitData
    var body: some View {
       Image(circuitdata.GPName)
        .resizable()
        .clipped()
        .background(Color(hue: 0.51, saturation: 1.0, brightness: 1.0))
        .cornerRadius(20)
        .scaledToFit()
        
    }
}
