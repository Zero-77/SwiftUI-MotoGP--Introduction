//
//  MaunfacturerItemDetail.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/23.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct ManufacturerItemDetail: View {
    let Item:ManufacturerItem
    var body: some View {
        ScrollView{
            VStack{
                Group{
                    ItemImage(Item:Item)//傳入song
                    Text(Item.Name).font(.custom("Verdana-Bold", size:30))
                        .frame(width:410)
                        .foregroundColor(Color.red)
                        .background(Color.black)
                        .cornerRadius(50)
                    
                }
                Text("介紹：\(Item.Introduction)")
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width:350)
                    .padding()
                    .font(.custom("Verdana-Bold", size:15))
                    .background(Color(hue: 0.144, saturation: 0.975, brightness: 1.0))
                    .cornerRadius(50)
                
            }
            .navigationBarTitle(Item.Name)
        }.background(  RadialGradient(gradient:Gradient(colors:[Color.gray,Color.white,Color.white,Color.red,Color.white,Color.black,Color.black,Color.white,Color.white]),
                                      center:.center,startRadius: 50, endRadius: 400)
            .frame(height: 720))
        
    }
}

struct ManufacturerItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ManufacturerItemDetail(Item:Item[0])
    }
}


struct ItemImage: View {
    let Item:ManufacturerItem
    var body: some View {
        Image(Item.Name)
            .resizable()
            //.clipped()
            .frame(width:650,height:500)
        
    }
}
