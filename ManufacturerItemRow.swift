//
//  ManufacturerItemRow.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/23.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct ManufacturerItemRow: View {
    let Item:ManufacturerItem
    var body: some View {
        HStack{
            Image(Item.Name)
                .renderingMode(.original)//讓圖片不會變預設藍底
                .resizable()
                .scaledToFit()
                
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.orange,lineWidth: 5))
                .shadow(radius: 10)
            VStack(alignment:.leading){
                Text(Item.Name).font(.custom("Thonburi-Bold",size:20)).foregroundColor(Color.red)
                
            }
            Spacer()
        }.padding(10).background(Image("checkeredflag").renderingMode(.original).resizable().scaledToFill().opacity(0.3)).clipped()
        
    }
}

struct ManufacturerItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ManufacturerItemRow(Item: ManufacturerItem( Name:"Yamaha YZR-M1(2019)",Introduction:"")).previewLayout(.fixed(width:400,height:110))
    }
}
