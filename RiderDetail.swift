//
//  RiderDetail.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/22.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct RiderDetail: View {
    let Riders:Riders
    var body: some View {
        ScrollView{
            VStack{
                Text("\n\n\n\n\n")
                Group{
                    RiderImage(Riders:Riders)//傳入song
                    Text(Riders.Name).font(.custom("GillSans-Italic",size:27))
                    Text("\n車號：\(Riders.Bikenumber)\n").font(.custom("GillSans-Italic",size:24))
                    Text("MotoGP-冠軍次數: \(Riders.Championships)\n").font(.custom("GillSans-Italic",size:25)).background(Color.yellow).cornerRadius(15)
                    Text("車隊：\(Riders.Team)\n").font(.custom("GillSans-Italic",size:24)).background(Color(hue: 0.62, saturation: 0.716, brightness: 0.95)).cornerRadius(15)
                    Text("車廠：\(Riders.Manufacturers)\n").font(.custom("GillSans-Italic",size:24)).background(Color(hue: 0.025, saturation: 0.975, brightness: 0.98)).cornerRadius(15)
                    Text("年齡：\(Riders.Age)\n").font(.custom("GillSans-Italic",size:24)).font(.custom("GillSans-Italic",size:24)).background(Color.yellow).cornerRadius(15)
                    Text("國籍：\(Riders.Nationality)\n").font(.custom("GillSans-Italic",size:24)).background(Color(hue: 0.62, saturation: 0.716, brightness: 0.95)).cornerRadius(15)
                    Text("職業生涯：\(Riders.Activeyears)").font(.custom("GillSans-Italic",size:24)).background(Color(hue: 0.025, saturation: 0.975, brightness: 0.98)).cornerRadius(10)
                }
                Text("介紹：\(Riders.Introduction)").font(.custom("GillSans-Italic",size:20))
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width:350)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(50)
                
            }
            .navigationBarTitle(Riders.Name)
        }.background(Image("motoGP").resizable().scaledToFit().opacity(0.3)).clipped()
    }
}

struct RiderDetail_Previews: PreviewProvider {
    static var previews: some View {
        RiderDetail(Riders: Rider[0])
    }
}

struct RiderImage: View {
    let Riders:Riders
    var body: some View {
        Image(Riders.Name)
            .scaledToFit()
        
    }
}
